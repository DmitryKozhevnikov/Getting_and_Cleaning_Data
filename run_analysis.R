# Author: Dmitry Kozhevnikov
# Data: 22.04.2020
# Getting and Cleaning Data Project. John Hopkins University

# Program Description
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.

# Loading Packages for the data tidying and setting the work direcory:
library(tidyverse)
wdir <- getwd()

# Loading and getting the Data:
url_dat <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url_dat, file.path(wdir, "Data.zip"))
unzip("Data.zip")

# Loading features and labels data:
features <- read_file(file.path(wdir, "UCI HAR Dataset", "features.txt"), col_names = c("index", "features"), delim = " ")
labels <- read

        
