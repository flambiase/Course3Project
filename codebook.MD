#UCI HAR Dataset Prep
## Code Book
###Introduction
The UCI Human Activity Recognition (HAR) database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

###Study Design
A group of 30 volunteers within an age bracket of 19-48 years performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Data collected included a 561-feature vector of time and frequency domain variables identified by subject and activity. Raw data output from these measurements was summarized to combine data for test and training subjects, calculating the means of each of the mean and standard deviation measure by subject id and activity label.

###Data Preparation
Program: https://github.com/flambiase/Course3Project/blob/master/run_analysis.R
Instructions: https://github.com/flambiase/Course3Project/blob/master/readme.R


###Output File
https://github.com/flambiase/Course3Project/blob/master/averagemeasures.txt

###Variables
Variable Label: activity                         
Format: Factor  
Comment: Label identifying the activity being performed while measurements were recorded.

Variable Label: subjectid                        
Format: int  
Comment: Identifies the subject performing the activity being measured.

Variable Label: meanoftbodyacc-mean()-x          
Format: num  
Comment: Mean of average measurements of portion of acceleration attributable to subject movement along the x axis.

Variable Label: meanoftbodyacc-mean()-y          
Format: num   
Comment: Mean of average measurements of portion of acceleration attributable to subject movement along the y axis.

Variable Label: meanoftbodyacc-mean()-z          
Format: num   
Comment: Mean of average measurements of portion of acceleration attributable to subject movement along the z axis.

Variable Label: meanoftbodyacc-std()-x           
Format: num    
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to subject movement along the x axis.

Variable Label: meanoftbodyacc-std()-y           
Format: num  
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to subject movement along the y axis.

Variable Label: meanoftbodyacc-std()-z           
Format: num  
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to subject movement along the z axis.

Variable Label: meanoftgravityacc-mean()-x       
Format: num   
Comment: Mean of average measurements of portion of acceleration attributable to gravity along the x axis.

Variable Label: meanoftgravityacc-mean()-y       
Format: num   
Comment: Mean of average measurements of portion of acceleration attributable to gravity along the y axis.

Variable Label: meanoftgravityacc-mean()-z       
Format: num  
Comment: Mean of average measurements of portion of acceleration attributable to gravity along the z axis.

Variable Label: meanoftgravityacc-std()-x        
Format: num   
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to gravity along the x axis.

Variable Label: meanoftgravityacc-std()-y        
Format: num   
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to gravity along the y axis.

Variable Label: meanoftgravityacc-std()-z        
Format: num   
Comment: Mean of standard deviation of measurements of portion of acceleration attributable to gravity along the z axis.

Variable Label: meanoftbodyaccjerk-mean()-x      
Format: num  
Comment: mean of average jerk signals measured by linear acceleration and angular velocity along the x axis.

Variable Label: meanoftbodyaccjerk-mean()-y      
Format: num   
Comment: mean of average jerk signals measured by linear acceleration and angular velocity along the y axis.

Variable Label: meanoftbodyaccjerk-mean()-z      
Format: num   
Comment: mean of average jerk signals measured by linear acceleration and angular velocity along the z axis.

Variable Label: meanoftbodyaccjerk-std()-x       
Format: num   
Comment: mean of standard deviation of jerk signals measured by linear acceleration and angular velocity along the x axis.

Variable Label: meanoftbodyaccjerk-std()-y       
Format: num   
Comment: mean of standard deviation of jerk signals measured by linear acceleration and angular velocity along the y axis.

Variable Label: meanoftbodyaccjerk-std()-z       
Format: num   
Comment: mean of standard deviation of jerk signals measured by linear acceleration and angular velocity along the z axis.

Variable Label: meanoftbodygyro-mean()-x         
Format: num 
Comment: mean of average angular velocity along the x axis.

Variable Label: meanoftbodygyro-mean()-y         
Format: num   
Comment: mean of average angular velocity along the x axis.

Variable Label: meanoftbodygyro-mean()-z         
Format: num   
Comment: mean of average angular velocity along the x axis.

Variable Label: meanoftbodygyro-std()-x          
Format: num  
Comment: mean of standard deviation of angular velocity along the x axis.

Variable Label: meanoftbodygyro-std()-y          
Format: num 
Comment: mean of standard deviation of angular velocity along the y axis.

Variable Label: meanoftbodygyro-std()-z          
Format: num   
Comment: mean of standard deviation of angular velocity along the z axis.

Variable Label: meanoftbodygyrojerk-mean()-x     
Format: num  
Comment: mean of average jerk signals along the x axis.

Variable Label: meanoftbodygyrojerk-mean()-y     
Format: num   
Comment: mean of average jerk signals along the y axis.

Variable Label: meanoftbodygyrojerk-mean()-z     
Format: num   
Comment: mean of average jerk signals along the z axis.

Variable Label: meanoftbodygyrojerk-std()-x      
Format: num  
Comment: mean of standard deviation of jerk signals along the x axis.

Variable Label: meanoftbodygyrojerk-std()-y      
Format: num  
Comment: mean of standard deviation of jerk signals along the y axis.

Variable Label: meanoftbodygyrojerk-std()-z      
Format: num   
Comment: mean of standard deviation of jerk signals along the z axis.


Variable Label: meanoftbodyaccmag-mean()         
Format: num  
Comment: mean of average body acceleration magnitude

Variable Label: meanoftbodyaccmag-std()          
Format: num   
Comment: mean of standard deviation of body acceleration magnitude

Variable Label: meanoftgravityaccmag-mean()      
Format: num   
Comment: mean of average gravity acceleration magnitude

Variable Label: meanoftgravityaccmag-std()       
Format: num   
Comment: mean of standard deviation of gravity acceleration magnitude

Variable Label: meanoftbodyaccjerkmag-mean()     
Format: num   
Comment: mean of average jerk acceleration magnitude 

Variable Label: meanoftbodyaccjerkmag-std()      
Format: num   
Comment: mean of standard deviation of jerk acceleration magnitude 

Variable Label: meanoftbodygyromag-mean()        
Format: num   
Comment: mean of average angular velocity magnitude

Variable Label: meanoftbodygyromag-std()         
Format: num  
Comment: mean of standard deviation of angular velocity magnitude

Variable Label: meanoftbodygyrojerkmag-mean()    
Format: num 
Comment: mean of average jerk angular velocity magnitude

Variable Label: meanoftbodygyrojerkmag-std()     
Format: num  
Comment: mean of standard deviation of jerk angular velocity magnitude

Variable Label: meanoffbodyacc-mean()-x          
Format: num  
Comment: mean of average body acceleration in the x axis.

Variable Label: meanoffbodyacc-mean()-y          
Format: num   
Comment: mean of average body acceleration in the y axis.

Variable Label: meanoffbodyacc-mean()-z          
Format: num   
Comment: mean of average body acceleration in the z axis.

Variable Label: meanoffbodyacc-std()-x           
Format: num  
Comment: mean of standard deviation of body acceleration in the x axis.

Variable Label: meanoffbodyacc-std()-y           
Format: num   
Comment: mean of standard deviation of body acceleration in the y axis.

Variable Label: meanoffbodyacc-std()-z           
Format: num   
Comment: mean of standard deviation of body acceleration in the z axis.

Variable Label: meanoffbodyaccjerk-mean()-x      
Format: num  
Comment: mean of average jerk acceleration in the x axis.

Variable Label: meanoffbodyaccjerk-mean()-y      
Format: num  
Comment: mean of average jerk acceleration in the y axis.

Variable Label: meanoffbodyaccjerk-mean()-z      
Format: num  
Comment: mean of average jerk acceleration in the z axis.

Variable Label: meanoffbodyaccjerk-std()-x       
Format: num   
Comment: mean of standard deviation of jerk acceleration in the x axis.

Variable Label: meanoffbodyaccjerk-std()-y       
Format: num  
Comment: mean of standard deviation of jerk acceleration in the y axis.

Variable Label: meanoffbodyaccjerk-std()-z       
Format: num   
Comment: mean of standard deviation of jerk acceleration in the z axis.

Variable Label: meanoffbodygyro-mean()-x         
Format: num  
Comment: mean of average body angular velocity in the x axis.

Variable Label: meanoffbodygyro-mean()-y         
Format: num  
Comment: mean of average body angular velocity in the y axis.

Variable Label: meanoffbodygyro-mean()-z         
Format: num  
Comment: mean of average body angular velocity in the z axis.

Variable Label: meanoffbodygyro-std()-x          
Format: num   
Comment: mean of standard deviation of body angular velocity in the x axis.

Variable Label: meanoffbodygyro-std()-y          
Format: num   
Comment: mean of standard deviation of body angular velocity in the y axis.

Variable Label: meanoffbodygyro-std()-z          
Format: num   
Comment: mean of standard deviation of body angular velocity in the z axis.

Variable Label: meanoffbodyaccmag-mean()         
Format: num  
Comment: mean of average body acceleration magnitude

Variable Label: meanoffbodyaccmag-std()          
Format: num  
Comment: mean of standard deviation of body acceleration magnitude

Variable Label: meanoffbodybodyaccjerkmag-mean() 
Format: num  
Comment: mean of average body jerk acceleration magnitude

Variable Label: meanoffbodybodyaccjerkmag-std()  
Format: num 
Comment: mean of standard deviation of body jerk acceleration magnitude

Variable Label: meanoffbodybodygyromag-mean()    
Format: num  
Comment: mean of average body angular velocity magnitude

Variable Label: meanoffbodybodygyromag-std()     
Format: num  
Comment: mean of standard deviation of body angular velocity magnitude

Variable Label: meanoffbodybodygyrojerkmag-mean()
Format: num  
Comment: mean of average body angular velocity jerk magnitude

Variable Label: meanoffbodybodygyrojerkmag-std() 
Format: num  
Comment: mean of standard deviation of body angular velocity jerk magnitude


