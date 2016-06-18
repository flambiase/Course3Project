## The purpose of this program is to read and merge two datasets containing data 
## from the accelerometers of Samsung Galaxy S smartphones in order to prepare a
## data set of averages of the measurement variables for each activity and subject.

# Load necessary packages
library(plyr)
library(dplyr)
library(stringr)

# Download and unzip data files
download.file("http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip", 
              "~/UCI HAR Dataset.zip")
unzip("~/UCI HAR Dataset.zip", exdir="UCI HAR Dataset")

## Read datasets into R 
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt", 
                   stringsAsFactors = FALSE, header=FALSE)    # Test set.
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt", 
                   header=FALSE, col.names = "activityid")    # Test labels.
s_test <- read.csv("UCI HAR Dataset/test/subject_test.txt", 
                   header=FALSE, col.names = "subjectid")     # Test subject ids.
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt", 
                    stringsAsFactors = FALSE, header=FALSE)    # Training set.
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt", 
                    header=FALSE, col.names = "activityid")    # Training labels.
s_train <- read.csv("UCI HAR Dataset/train/subject_train.txt", 
                    header=FALSE, col.names = "subjectid")     # Training subject ids.
act_lbls <- read.csv("UCI HAR Dataset/activity_labels.txt",  
                     sep=" ", header = FALSE, 
                     col.names = c("activityid", "activity"))   # Activity names.
feat_lbls <- read.csv("UCI HAR Dataset/features.txt", 
                      sep=" ", header = FALSE, 
                      col.names = c("featureindex", "feature"))  # Feature names.

# append train and test data sets
meas <- rbind(X_train, X_test)
acts <- rbind(y_train, y_test)
subs <- rbind(s_train, s_test)

# Search feat_lbls for "mean" and "std" values - get vectors of featureindex values
# as well as vectors of feature names. Punct removes meanFreq() values and retains only mean()
fidx <- grep("mean[[:punct:]]{2}|*std()*", feat_lbls$feature)
flbl <- tolower(grep("mean[[:punct:]]{2}|*std()*", feat_lbls$feature, value = TRUE))

# Parse character string of feature values (the movement measurements) into vector
# Featurevalues is a list of 561 values, which is parsed by strsplit().
# Featurevalues is delimited by spaces. Gsub() and str_trim() are used to remove multiple 
# spaces so strsplit() can work cleanly.
pf<- strsplit(gsub("  ", " ", str_trim(meas$V1)), " ")

# convert vector to matrix with feature values as columns and observations as rows
# Unlist is used to transform the list into discrete values that can be summarized
df <- matrix(as.numeric(unlist(pf)), nrow=10299, byrow = TRUE )

f <- df[,fidx]         # trim dataset down to mean & stdev variables only
colnames(f) <-flbl     # add feature labels to mean & stdevvariables

# Merge activity ids to their descriptive labels
actlbls <- merge(acts, act_lbls)

# Create separate dataset to store the averages of each of the mean() and str()
# variables by activity name and subject id
averagemeasures <-aggregate(f, 
                    by=list(actlbls$activity, subs$subjectid), 
                    FUN=mean, na.rm=TRUE)

colnames(averagemeasures) <- c("activity", "subjectid", paste("meanof", flbl, sep=""))

# create output CSV
write.table(averagemeasures, file="averagemeasures.txt", row.names=FALSE)
