# Author: Dmitry Kozhevnikov
# Data: 29.04.2020
# Getting and Cleaning Data Project. John Hopkins University

# Program Description
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.

# Loading Packages for the data tidying and setting the work direcory:
library(dplyr)
library(tidyr)
wdir <- getwd()

# Loading and getting the Data:
url_dat <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url_dat, file.path(wdir, "Data.zip"))
unzip("Data.zip")

# Loading the features and labels data:
feature <- read.table(file.path(wdir, "UCI HAR Dataset", "features.txt"), col.names = c("ID", "featureName"), stringsAsFactors = FALSE)
labels <- read.table(file.path(wdir, "UCI HAR Dataset", "activity_labels.txt"), col.names = c("activityClass", "activityName"), stringsAsFactors = FALSE)

# Loading the training data:
trainSet <- read.table(file.path(wdir, "UCI HAR Dataset", "train", "X_train.txt"), col.names = feature$featureName, stringsAsFactors = FALSE)
trainLabels <- read.table(file.path(wdir, "UCI HAR Dataset", "train", "y_train.txt"), col.names = "activityClass", stringsAsFactors = FALSE)
trainSubject <- read.table(file.path(wdir, "UCI HAR Dataset", "train", "subject_train.txt"), col.names = "subjectID", stringsAsFactors = FALSE)
trainData <- cbind(trainLabels, trainSubject, trainSet)

# Loading the test data:
testSet <- read.table(file.path(wdir, "UCI HAR Dataset", "test", "X_test.txt"), col.names = feature$featureName, stringsAsFactors = FALSE)
testLabels <- read.table(file.path(wdir, "UCI HAR Dataset", "test", "y_test.txt"), col.names = "activityClass", stringsAsFactors = FALSE)
testSubject <- read.table(file.path(wdir, "UCI HAR Dataset", "test", "subject_test.txt"), col.names = "subjectID", stringsAsFactors = FALSE)
testData <- cbind(testLabels, testSubject, testSet)

# Merding the training and test datasets:
joinedData <- rbind(trainData, testData)
joinedData <- joinedData[, c(1,2, grep("mean|std", names(joinedData)))]

# Adding the activity label to joined data i.e. merging the "joinedData" and "labels"
completeData <- merge(labels, joinedData, by = "activityClass", all.y = TRUE)

# Tidying the final data
completeData <- tbl_df(completeData) %>%
        select(-1) %>%
        gather(key = "featureName", value = "signalValue", -activityName, -subjectID)

# Saving the tidy Data in a txt file:
write.table(completeData, file = "tidy_data.txt", sep = " ", row.names = FALSE)

# Removing objects from an Environment
rm(feature, labels, trainSet, trainLabels, trainSubject, trainData, testSet, 
   testLabels, testData, testSubject, joinedData, completeData, wdir, url_dat)