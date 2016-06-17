# UCI HAR Dataset Prep
## Course project for Getting and Cleaning Data

The purpose of this program is to read and merge two datasets containing data from the accelerometers of Samsung Galaxy S smartphones in order to prepare a data set of averages of the measurement variables for each activity and subject.

The program will identify from a list of measurements all those relating to means or standard deviations. These will be summarized in the output data set.


## Data Source
Data used for this project can be found at this location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the UCI Machine Learning Repository Site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The ZIP file provided includes a README file describing the raw datasets in detail.

## Method
run_analysis.R was prepared to download, unzip, read, and process the data. 

Program location: https://github.com/flambiase/Course3Project/blob/master/run_analysis.R

The program loads the plyr, dplyr, and stringr packages, all of which will be used
to parse and summarize the raw data. Eight TXT files are read from the raw data:
* X_test: 7352 observations of a 561-value string containing the feature measurements for test subjects.
* X_train: 2947 observations of a 561-value string containing the feature measurements for training subjects.
* y_test: 7352 observations identifying the activities to which X_test observations relate.
* y_train: 2947 observations identifying the activities to which X_train observations relate.
* s_test:7352 observations identifying the subjects whose activities X_test measure.
* s_train: 2947 observations identifying the subjects whose activities X_test measure.
* activity_labels: decodes the activities identified in the y_ datasets to descriptive names.
* features: descriptive labels for the 561 measurements represented in the X_ datasets.

Each test / train pair above is appended together into measure(meas), activity(acts), and subject(subs) data sets

The features dataset is grep'd to identify all measurements related to means or standard deviations - first to find the index location of each, then to store the value.

The 561-value measurement string field in the meas dataset is then parsed into a vector and converted to a matrix containing feature values as columns and observations as rows. Index locations of the mean and std measurements are used to trim this dataset down to only those measurements that are of interest and the values are applied to the matrix as column headers. 

Finally, the aggregate function is used to summarize the raw data by the activity name and subject id, calculating the mean of each feature measurement. Column names are updated to indicate that each is the mean of the raw measurement. This final dataset is written to a CSV.

## Output data
Location: https://github.com/flambiase/Course3Project/blob/master/averagemeasures.csv

Code book detailing structure and contents: https://github.com/flambiase/Course3Project/blob/master/codebook.MD

