---
title: "CodeBook"
author: "Dmitry Kozhevnikov"
date: "29.04.2020"
---

### Description
The code book describes the variables, the data, and any transformation performed to clean up the data.


### Data Set Infromation
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Variables names description:

* __*activityName*__ 

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

* __*subjectID*__

1. 1...30 - number of volunteers


* __*featureName*__

   Description of the variables is given in the "feature_info.txt" file.

1. "fBodyAcc.mean...X"
2.  "fBodyAcc.mean...Y"
3. "fBodyAcc.mean...Z"
4. "fBodyAcc.meanFreq...X"
5. "fBodyAcc.meanFreq...Y"
6. "fBodyAcc.meanFreq...Z"
7. "fBodyAcc.std...X"
8. "fBodyAcc.std...Y"
9. "fBodyAcc.std...Z"
10. "fBodyAccJerk.mean...X"
11. "fBodyAccJerk.mean...Y"
12. "fBodyAccJerk.mean...Z"
13. "fBodyAccJerk.meanFreq...X"
14. "fBodyAccJerk.meanFreq...Y"
15. "fBodyAccJerk.meanFreq...Z"
16. "fBodyAccJerk.std...X"
17. "fBodyAccJerk.std...Y"
18. "fBodyAccJerk.std...Z"
19. "fBodyAccMag.mean.."
20. "fBodyAccMag.meanFreq.."
21. "fBodyAccMag.std.."
22. "fBodyBodyAccJerkMag.mean.."
23. "fBodyBodyAccJerkMag.meanFreq.."
24. "fBodyBodyAccJerkMag.std.."
25. "fBodyBodyGyroJerkMag.mean.."
26. "fBodyBodyGyroJerkMag.meanFreq.."
27. "fBodyBodyGyroJerkMag.std.."
28. "fBodyBodyGyroMag.mean.."
29. "fBodyBodyGyroMag.meanFreq.."
30. "fBodyBodyGyroMag.std.."
31. "fBodyGyro.mean...X"
32. "fBodyGyro.mean...Y"
33. "fBodyGyro.mean...Z"
34. "fBodyGyro.meanFreq...X"
35. "fBodyGyro.meanFreq...Y"
36. "fBodyGyro.meanFreq...Z"
37. "fBodyGyro.std...X"
38. "fBodyGyro.std...Y"
39. "fBodyGyro.std...Z"
40. "tBodyAcc.mean...X"
41. "tBodyAcc.mean...Y"
42. "tBodyAcc.mean...Z"
43. "tBodyAcc.std...X"
44. "tBodyAcc.std...Y"
45. "tBodyAcc.std...Z"
46. "tBodyAccJerk.mean...X"
47. "tBodyAccJerk.mean...Y"
48. "tBodyAccJerk.mean...Z"
49. "tBodyAccJerk.std...X"
50. "tBodyAccJerk.std...Y"
51. "tBodyAccJerk.std...Z"
52. "tBodyAccJerkMag.mean.."
53. "tBodyAccJerkMag.std.."
54. "tBodyAccMag.mean.."
55. "tBodyAccMag.std.."
56. "tBodyGyro.mean...X"
57. "tBodyGyro.mean...Y"
58. "tBodyGyro.mean...Z"
59. "tBodyGyro.std...X"
60. "tBodyGyro.std...Y"
61. "tBodyGyro.std...Z"
62. "tBodyGyroJerk.mean...X"
63. "tBodyGyroJerk.mean...Y"
64. "tBodyGyroJerk.mean...Z"
65. "tBodyGyroJerk.std...X"
66. "tBodyGyroJerk.std...Y"
67. "tBodyGyroJerk.std...Z"
68. "tBodyGyroJerkMag.mean.."
69. "tBodyGyroJerkMag.std.."
70. "tBodyGyroMag.mean.."
71. "tBodyGyroMag.std.."
72. "tGravityAcc.mean...X"
73. "tGravityAcc.mean...Y"
74. "tGravityAcc.mean...Z"
75. "tGravityAcc.std...X"
76. "tGravityAcc.std...Y"
77. "tGravityAcc.std...Z"
78. "tGravityAccMag.mean.."
79. "tGravityAccMag.std.."

* __*signalValue*__

1. Values of features are normalized and bounded within [-1, 1]

### Transformations made to clean up the data

1. Loading and getting the Data
2. Loading the features and labels data
3. Loading the training data (Source: "X_train.txt", "y_train.txt", "subject_train.txt")
4. Loading the test data (Source: "X_test.txt", "y_test.txt", "subject_test.txt")
5. Merding the train and test datasets
6. Extracts the measurements on the mean and standard deviation for each measurement
7. Adding the activity label to joined data i.e. merging the "joinedData" and "labels"
8. Tidying the final data using Tidyr Package