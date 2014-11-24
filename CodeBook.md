# CodeBook
This CodeBook was created for the John Hopkin's Getting and Cleaning Data Course Project in Coursera. 
It describes the variables, data and transformations performed to reach the tidy data.

This course focuses on getting raw data from several sources and organizing it into tidy data so it can then be analyzed.

## The Data Source
Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


## Project Instructions
You should create one R script called run_analysis.R that does the following: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Packages used
For this project the following R packages were used:
1. data.table

##Data Description

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

##Steps 

1. Create variables and load data <br>
`activity_labels <- read.table('dataset/activity_labels.txt')` <br>
`features <- read.table('dataset/features.txt')`<br>
`train_labels <- read.table('dataset/train/y_train.txt')` <br>
`test_labels <- read.table('dataset/test/y_test.txt')` <br>
`train_set <- read.table('dataset/train/X_train.txt')` <br>
`test_set <- read.table('dataset/test/X_test.txt')` <br>
2. Merge the training and test datasets without excluding observations <br>
`mergedata<- merge(train_set, test_set,all=TRUE)`
3. Add  names and descriptions to data set <br>
`list_activities <- as.character(features$V2)`<br>
`headers <- c("Activity_ID",list_activities)`<br>
`names(mergedata) <- headers`<br>
`features$V2 <- as.character(features$V2)`<br>
4. Identify which ones are mean or STD <br>
`meanSTD <- grepl("mean|std", features$V2)`
`dataMeanStd = mergedata[,meanSTD]`
5. Create tidy data set with mean<br>




 