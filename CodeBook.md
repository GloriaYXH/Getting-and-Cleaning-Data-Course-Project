#Get the Data:

It is obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Data Set Background:

A Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded acceleration and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (acceleration and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


#Raw Data:
For each record in the dataset it is provided: 
- Triaxial acceleration from the acceleration (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


#Transformation Steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Processed Tidy Data:
In the final tidy dataset, for each activity of each subject, it provides average of 66 measures as further described below.

##SubjectId	
	Unique Identifier of the 30 subjects in the experiments
	values are 1, 2, 3, ..., 30

##Activity
	Name of the 6 activities carried out in the experiments:
		LAYING
		SITTING
		STANDING
		WALKING
		WALKING_DOWNSTAIRS
		WALKING_UPSTAIRS

##timeBodyAcc.mean.X
	Mean of body acceleration time on X axis 	

##timeBodyAcc.mean.Y
	Mean of body acceleration time on Y axis 

##timeBodyAcc.mean.Z
	Mean of body acceleration time on Z axis 

##timeBodyAcc.std.X
	Standard deviation of body acceleration time on X axis 

##timeBodyAcc.std.Y
	Standard deviation of body acceleration time on Y axis

##timeBodyAcc.std.Z
	Standard deviation of body acceleration time on Z axis

##timeGravityAcc.mean.X
	Mean of gravity acceleration time on X axis 

##timeGravityAcc.mean.Y
	Mean of gravity acceleration time on Y axis

##timeGravityAcc.mean.Z
	Mean of gravity acceleration time on Z axis

##timeGravityAcc.std.X
	Standard deviation of gravity acceleration time on X axis 

##timeGravityAcc.std.Y
	Standard deviation of gravity acceleration time on Y axis 

##timeGravityAcc.std.Z
	Standard deviation of gravity acceleration time on Z axis 

##timeBodyAccJerk.mean.X
	Mean of body acceleration jerk time on X axis

##timeBodyAccJerk.mean.Y
	Mean of body acceleration jerk time on Y axis

##timeBodyAccJerk.mean.Z
	Mean of body acceleration jerk time on Z axis

##timeBodyAccJerk.std.X
	Standard deviation of body acceleration jerk time on X axis

##timeBodyAccJerk.std.Y
	Standard deviation of body acceleration jerk time on Y axis

##timeBodyAccJerk.std.Z
	Standard deviation of body acceleration jerk time on Z axis

##timeBodyGyro.mean.X
	Mean of body gyroscope time on X axis

##timeBodyGyro.mean.Y
	Mean of body gyroscope time on Y axis	

##timeBodyGyro.mean.Z
	Mean of body gyroscope time on Z axis	

##timeBodyGyro.std.X
	Standard deviation of body gyroscope time on X axis

##timeBodyGyro.std.Y
	Standard deviation of body gyroscope time on Y axis

##timeBodyGyro.std.Z
	Standard deviation of body gyroscope time on Z axis
	
##timeBodyGyroJerk.mean.X
	Mean of body gyroscope jerk time on X axis
	
##timeBodyGyroJerk.mean.Y
	Mean of body gyroscope jerk time on Y axis

##timeBodyGyroJerk.mean.Z
	Mean of body gyroscope jerk time on Z axis

##timeBodyGyroJerk.std.X
	Standard deviation of body gyroscope jerk time on X axis

##timeBodyGyroJerk.std.Y
	Standard deviation of body gyroscope jerk time on Y axis

##timeBodyGyroJerk.std.Z
	Standard deviation of body gyroscope jerk time on Z axis

##timeBodyAccMag.mean
	Mean of body acceleration magnitude time

##timeBodyAccMag.std
	Standard deviation of body acceleration magnitude time

##timeGravityAccMag.mean
	Mean of gravity acceleration magnitude time

##timeGravityAccMag.std
	Standard deviation of gravity acceleration magnitude time

##timeBodyAccJerkMag.mean
	Mean of body acceleration jerk magnitude time

##timeBodyAccJerkMag.std
	Standard deviation of body acceleration jerk magnitude time

##timeBodyGyroMag.mean
	Mean of body gyroscope magnitude time

##timeBodyGyroMag.std
	Standard deviation of body gyroscope magnitude time

##timeBodyGyroJerkMag.mean
	Mean of body gyroscope jerk magnitude time

##timeBodyGyroJerkMag.std
	Standard deviation of body gyroscope jerk magnitude time

##frequencyBodyAcc.mean.X
	Mean of body acceleration frequency on X axis

##frequencyBodyAcc.mean.Y
	Mean of body acceleration frequency on Y axis

##frequencyBodyAcc.mean.Z
	Mean of body acceleration frequency on Z axis

##frequencyBodyAcc.std.X
	Standard deviation of body acceleration frequency on X axis

##frequencyBodyAcc.std.Y
	Standard deviation of body acceleration frequency on Y axis

##frequencyBodyAcc.std.Z
	Standard deviation of body acceleration frequency on Z axis

##frequencyBodyAccJerk.mean.X
	Mean of body acceleration jerk frequency on X axis

##frequencyBodyAccJerk.mean.Y
	Mean of body acceleration jerk frequency on Y axis

##frequencyBodyAccJerk.mean.Z
	Mean of body acceleration jerk frequency on Z axis

##frequencyBodyAccJerk.std.X
	Standard deviation of body acceleration jerk frequency on X axis

##frequencyBodyAccJerk.std.Y
	Standard deviation of body acceleration jerk frequency on Y axis

##frequencyBodyAccJerk.std.Z
	Standard deviation of body acceleration jerk frequency on Z axis

##frequencyBodyGyro.mean.X
	Mean of body gyroscope frequency on X axis

##frequencyBodyGyro.mean.Y
	Mean of body gyroscope frequency on Y axis

##frequencyBodyGyro.mean.Z
	Mean of body gyroscope frequency on Z axis

##frequencyBodyGyro.std.X
	Standard deviation of body gyroscope frequency on X axis

##frequencyBodyGyro.std.Y
	Standard deviation of body gyroscope frequency on Y axis

##frequencyBodyGyro.std.Z
	Standard deviation of body gyroscope frequency on Z axis

##frequencyBodyAccMag.mean
	Mean of body acceleration magnitude frequency

##frequencyBodyAccMag.std
	Standard deviation of body acceleration magnitude frequency

##frequencyBodyAccJerkMag.mean
	Mean of body acceleration jerk magnitude frequency

##frequencyBodyAccJerkMag.std 
	Standard deviation of body acceleration jerk magnitude frequency

##frequencyBodyGyroMag.mean
	Mean of body gyroscope magnitude frequency

##frequencyBodyGyroMag.std
	Standard deviation of body gyroscope magnitude frequency

##frequencyBodyGyroJerkMag.mean
	Mean of body gyroscope jerk magnitude frequency
	
##frequencyBodyGyroJerkMag.std
	Standard deviation of body gyroscope jerk magnitude frequency
