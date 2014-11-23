Getting-and-Cleaning-Data-Course-Project
========================================
##Purpose:

This Repo is created for the Coursera "Getting and Cleaning Data" course project.

##Data Source:

Data for the project is obtained from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

It is a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

##run_analysis.R

After download the data and unzip it into the work directory on your computer, you should be able to work with the data by running the run_analysis.R in this Repo, to generate a tidy dataset. 

The code in run_analysis.R does the following steps: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##CodeBook.md

Check the CodeBook.md file in this Repo, which further describes the variables, the data and relevant information of the final tidy dataset. 
