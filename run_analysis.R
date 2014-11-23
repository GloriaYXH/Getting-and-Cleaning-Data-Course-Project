#load needed packages
library(data.table)
library(dplyr)

#read 3 test files
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
colnames(y_test) <- "ActivityId"
colnames(subject_test) <- "SubjectId"
#column bind the 3 test data frames into 1 test dataset
testData <- cbind(X_test, y_test, subject_test)

#read 3 train files
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
colnames(y_train) <- "ActivityId"
colnames(subject_train) <- "SubjectId"
#column bind the 3 train data frames into 1 train dataset
trainData <- cbind(X_train, y_train, subject_train)

#append test data and train data to create 1 big data set
allData <- rbind(testData, trainData)

#read the features file for measurement names
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE,colClasses="character")
#convert the data frame into a vector
features_v <- as.vector(features[,2])
#create a logical vector to identify the measures with mean() or std() in the name
meanStd_cols <- grepl("mean\\(\\)|std\\(\\)", features_v) 

#apply the logical vector to subset the allData to only keep the measures of mean or standard deviation
subData <- allData[, c(meanStd_cols, TRUE, TRUE)]

# use descrptive names for the activities in the dataset
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity) <- c("ActivityId", "Activity")
subData1 <- merge(subData, activity, by.x="ActivityId", by.y="ActivityId", all=TRUE)
subData2 <- tbl_df(subData1)
subData2 <- select(subData2, -ActivityId)

# multiple steps to generate descriptive variable name
keepFeaNames<- features_v[meanStd_cols]
# remove () from variable names
tidyName <- gsub("\\(\\)", "", keepFeaNames)
# remove redundancy in name such as BodyBody
tidyName <- gsub("BodyBody", "Body", tidyName)
# make name more descrptive
tidyName <- gsub("tBody","timeBody", tidyName)
tidyName <- gsub("fBody", "frequencyBody", tidyName)
tidyName <- gsub("tGravity", "timeGravity",tidyName)
tidyName <- make.names(tidyName, unique=TRUE, allow_=TRUE)

#assign decriptive names to the dataset
allName <- c(tidyName, "SubjectId", "Activity")
colnames(subData2) <- allName

#creates data set with average of each variable for each activity and each subject
by_vars <- group_by(subData2, SubjectId, Activity)
sumData <- summarise_each(by_vars, funs(mean))

#write the data to a text file
write.table(sumData, "FinalTidyData.txt", col.names=TRUE, row.names=FALSE, sep=",")

