---
title: "Getting and Cleaning Data Course Project"
author: "Dmitry Kozhevnikov"
date: "21.04.2020"
output: html_document
---

## The Purpose of the Project
To demonstrate the ability to collect, work with, and clean a data set.

## Review criteria
1. The submitted data set is tidy.
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries 4. calculated, along with units, and any other relevant information.
5. The README that explains the analysis files is clear and understandable.
6. The work submitted for this project is the work of the student who submitted it.

## The link to the Data for the Project:
[Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## The full description of the Data:
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files Description in the Repository:
**run_analysis.R** performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**CodeBook.md** describes all variables, data, and transformations made to clean up the data.

