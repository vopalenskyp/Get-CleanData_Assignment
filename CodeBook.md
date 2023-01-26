---
title: "CodeBook"
author: "Pavel Vopalensky"
date: "2023-01-26"
output: html_document
---

The codebook has three parts - two parts cover the information for the two output files of the script, the third part is just the quotation of the original information to the dataset produced by the authors of the study.

## Part 1: Codebook for the file *Step4_final_data.csv* 
The file *Step4_final_data.csv* is a comma separated value file containing 10300 rows (one header row and 10299 observations) and 81 columns, two of which have the information about the Activity (column 1) and the ID of the subject (= person performing the exercise) in column 2. The remaining 79 columns contain the mean and standard deviation values of the variables described below.  

The contents of the individual column is as follows:  

| **Column number** | **Column name**                 | **Variable description**                                                                                                              |
| ----------------- | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| 1                 | Activity                        | The description of the activity. (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING)                         |
| 2                 | SubjectCode                     | The ID code of the person participating in the study. An integer between 1 and 30.                                                    |
| 3                 | tBodyAcc-mean()-X               | The mean value of the body acceleration time domain signal in X-axis.                                                                 |
| 4                 | tBodyAcc-mean()-Y               | The mean value of the body acceleration time domain signal in Y-axis.                                                                 |
| 5                 | tBodyAcc-mean()-Z               | The mean value of the body acceleration time domain signal in Z-axis.                                                                 |
| 6                 | tGravityAcc-mean()-X            | The mean value of the gravity acceleration time domain signal in X-axis.                                                              |
| 7                 | tGravityAcc-mean()-Y            | The mean value of the gravity acceleration time domain signal in Y-axis.                                                              |
| 8                 | tGravityAcc-mean()-Z            | The mean value of the gravity acceleration time domain signal in Z-axis.                                                              |
| 9                 | tBodyAccJerk-mean()-X           | The mean value of the first derivation in time of the body acceleration time domain signal in X-axis.                                 |
| 10                | tBodyAccJerk-mean()-Y           | The mean value of the first derivation in time of the body acceleration time domain signal in Y-axis.                                 |
| 11                | tBodyAccJerk-mean()-Z           | The mean value of the first derivation in time of the body acceleration time domain signal in Z-axis.                                 |
| 12                | tBodyGyro-mean()-X              | The mean value of body angular velocity time domain signal in X-axis.                                                                 |
| 13                | tBodyGyro-mean()-Y              | The mean value of body angular velocity time domain signal in Y-axis.                                                                 |
| 14                | tBodyGyro-mean()-Z              | The mean value of body angular velocity time domain signal in Z-axis.                                                                 |
| 15                | tBodyGyroJerk-mean()-X          | The mean value of the first derivation in time of the body angular velocity time domain signal in X-axis.                             |
| 16                | tBodyGyroJerk-mean()-Y          | The mean value of the first derivation in time of the body angular velocity time domain signal in Y-axis.                             |
| 17                | tBodyGyroJerk-mean()-Z          | The mean value of the first derivation in time of the body angular velocity time domain signal in Z-axis.                             |
| 18                | tBodyAccMag-mean()              | The mean value of the magnitude of the body acceleration time domain signal.                                                          |
| 19                | tGravityAccMag-mean()           | The mean value of the magnitude of the gravity acceleration time domain signal.                                                       |
| 20                | tBodyAccJerkMag-mean()          | The mean value of the magnitude of the first derivation of the body acceleration time domain signal.                                  |
| 21                | tBodyGyroMag-mean()             | The mean value of the magnitude of the angular velocity time domain signal.                                                           |
| 22                | tBodyGyroJerkMag-mean()         | The mean value of the magnitude of the first derivation of the angular velocity time domain signal.                                   |
| 23                | fBodyAcc-mean()-X               | The mean value of the body acceleration frequency domain signal in X-axis.                                                            |
| 24                | fBodyAcc-mean()-Y               | The mean value of the body acceleration frequency domain signal in Y-axis.                                                            |
| 25                | fBodyAcc-mean()-Z               | The mean value of the body acceleration frequency domain signal in Z-axis.                                                            |
| 26                | fBodyAcc-meanFreq()-X           | The mean frequency value of the body acceleration frequency domain signal in X-axis.                                                  |
| 27                | fBodyAcc-meanFreq()-Y           | The mean frequency value of the body acceleration frequency domain signal in Y-axis.                                                  |
| 28                | fBodyAcc-meanFreq()-Z           | The mean frequency value of the body acceleration frequency domain signal in Z-axis.                                                  |
| 29                | fBodyAccJerk-mean()-X           | The mean value of the first derivation of the body acceleration frequency domain signal in X-axis.                                    |
| 30                | fBodyAccJerk-mean()-Y           | The mean value of the first derivation of the body acceleration frequency domain signal in Y-axis.                                    |
| 31                | fBodyAccJerk-mean()-Z           | The mean value of the first derivation of the body acceleration frequency domain signal in Z-axis.                                    |
| 32                | fBodyAccJerk-meanFreq()-X       | The mean frequency value of the first derivation of the body acceleration frequency domain signal in X-axis.                          |
| 33                | fBodyAccJerk-meanFreq()-Y       | The mean frequency value of the first derivation of the body acceleration frequency domain signal in Y-axis.                          |
| 34                | fBodyAccJerk-meanFreq()-Z       | The mean frequency value of the first derivation of the body acceleration frequency domain signal in Z-axis.                          |
| 35                | fBodyGyro-mean()-X              | The mean  value of the body angular velocity frequency domain signal in X axis.                                                       |
| 36                | fBodyGyro-mean()-Y              | The mean  value of the body angular velocity frequency domain signal in Y axis.                                                       |
| 37                | fBodyGyro-mean()-Z              | The mean  value of the body angular velocity frequency domain signal in Z axis.                                                       |
| 38                | fBodyGyro-meanFreq()-X          | The mean frequency value of the body angular velocity frequency domain signal in X axis.                                              |
| 39                | fBodyGyro-meanFreq()-Y          | The mean frequency value of the body angular velocity frequency domain signal in Y axis.                                              |
| 40                | fBodyGyro-meanFreq()-Z          | The mean frequency value of the body angular velocity frequency domain signal in Z axis.                                              |
| 41                | fBodyAccMag-mean()              | The mean value of the magnitude of the body acceleration frequency domain signal.                                                     |
| 42                | fBodyAccMag-meanFreq()          | The mean frequency value of the magnitude of the body acceleration frequency domain signal.                                           |
| 43                | fBodyBodyAccJerkMag-mean()      | The mean value of the magnitude of the body/gyroscope acceleration frequency domain signal.                                           |
| 44                | fBodyBodyAccJerkMag-meanFreq()  | The mean frequency value of the first derivation of the magnitude of the body/gyroscope acceleration frequency domain signal.         |
| 45                | fBodyBodyGyroMag-mean()         | The mean value of the magnitude of  body/gyroscope angular velocity frequency domain signal.                                          |
| 46                | fBodyBodyGyroMag-meanFreq()     | The mean frequency value of the magnitude of the body/gyroscope angular velocity frequency domain signal.                             |
| 47                | fBodyBodyGyroJerkMag-mean()     | The mean value of the magnitude of the body/gyroscope angular velocity frequency domain signal.                                       |
| 48                | fBodyBodyGyroJerkMag-meanFreq() | The mean frequency value of the first derivation of the magnitude of the body/gyroscope angular velocity frequency domain signal.     |
| 49                | tBodyAcc-std()-X                | The standard deviation value of the body acceleration time domain signal in X-axis.                                                   |
| 50                | tBodyAcc-std()-Y                | The standard deviation value of the body acceleration time domain signal in Y-axis.                                                   |
| 51                | tBodyAcc-std()-Z                | The standard deviation value of the body acceleration time domain signal in Z-axis.                                                   |
| 52                | tGravityAcc-std()-X             | The standard deviation value of the gravity acceleration time domain signal in X-axis.                                                |
| 53                | tGravityAcc-std()-Y             | The standard deviation value of the gravity acceleration time domain signal in Y-axis.                                                |
| 54                | tGravityAcc-std()-Z             | The standard deviation value of the gravity acceleration time domain signal in Z-axis.                                                |
| 55                | tBodyAccJerk-std()-X            | The standard deviation value of the first derivation in time of the body acceleration time domain signal in X-axis.                   |
| 56                | tBodyAccJerk-std()-Y            | The standard deviation value of the first derivation in time of the body acceleration time domain signal in Y-axis.                   |
| 57                | tBodyAccJerk-std()-Z            | The standard deviation value of the first derivation in time of the body acceleration time domain signal in Z-axis.                   |
| 58                | tBodyGyro-std()-X               | The standard deviation value of body angular velocity time domain signal in X-axis.                                                   |
| 59                | tBodyGyro-std()-Y               | The standard deviation value of body angular velocity time domain signal in Y-axis.                                                   |
| 60                | tBodyGyro-std()-Z               | The standard deviation value of body angular velocity time domain signal in Z-axis.                                                   |
| 61                | tBodyGyroJerk-std()-X           | The standard deviation value of the first derivation in time of the body angular velocity time domain signal in X-axis.               |
| 62                | tBodyGyroJerk-std()-Y           | The standard deviation value of the first derivation in time of the body angular velocity time domain signal in Y-axis.               |
| 63                | tBodyGyroJerk-std()-Z           | The standard deviation value of the first derivation in time of the body angular velocity time domain signal in Z-axis.               |
| 64                | tBodyAccMag-std()               | The standard deviation value of the magnitude of the body acceleration time domain signal.                                            |
| 65                | tGravityAccMag-std()            | The standard deviation value of the magnitude of the gravity acceleration time domain signal.                                         |
| 66                | tBodyAccJerkMag-std()           | The standard deviation value of the magnitude of the first derivation of the body acceleration time domain signal.                    |
| 67                | tBodyGyroMag-std()              | The standard deviation value of the magnitude of the angular velocity time domain signal.                                             |
| 68                | tBodyGyroJerkMag-std()          | The standard deviation value of the magnitude of the first derivation of the angular velocity time domain signal.                     |
| 69                | fBodyAcc-std()-X                | The standard deviation value of the body acceleration frequency domain signal in X-axis.                                              |
| 70                | fBodyAcc-std()-Y                | The standard deviation value of the body acceleration frequency domain signal in Y-axis.                                              |
| 71                | fBodyAcc-std()-Z                | The standard deviation value of the body acceleration frequency domain signal in Z-axis.                                              |
| 72                | fBodyAccJerk-std()-X            | The standard deviation value of the first derivation of body acceleration frequency domain signal in X-axis.                          |
| 73                | fBodyAccJerk-std()-Y            | The standard deviation value of the first derivation of body acceleration frequency domain signal in Y-axis.                          |
| 74                | fBodyAccJerk-std()-Z            | The standard deviation value of the first derivation of body acceleration frequency domain signal in Z-axis.                          |
| 75                | fBodyGyro-std()-X               | The standard deviation value of body angular velocity frequency domain signal in X-axis.                                              |
| 76                | fBodyGyro-std()-Y               | The standard deviation value of body angular velocity frequency domain signal in Y-axis.                                              |
| 77                | fBodyGyro-std()-Z               | The standard deviation value of body angular velocity frequency domain signal in Z-axis.                                              |
| 78                | fBodyAccMag-std()               | The standard deviation value of themagnitude of  body acceleration frequency domain signal.                                           |
| 79                | fBodyBodyAccJerkMag-std()       | The standard deviation value of the first derivation of the magnitude of the body/body acceleration frequency domain signal.          |
| 80                | fBodyBodyGyroMag-std()          | The standard deviation value of the magnitude of the body/gyroscope angular velocity frequency domain signal.                         |
| 81                | fBodyBodyGyroJerkMag-std()      | The standard deviation value of the first derivation of the magnitude of the body/gyroscope angular velocity frequency domain signal. |  


## Part 2: Codebook for the file *Step5_smaller_data.csv* 
The file *Step5_smaller_data.csv* is derived from the file *Step4_final_data.csv* by the last part of the script. In this part, the data is grouped by the subject ID (= participant) and mean value of each given activity is calculated for each subject ID for every variable. Thus, the column has 181 rows (1 header row and 180 data rows = 30 subject x 6 activities). The number of columns with variable remains the same, i.e 79. In cotrast to the file *Step4_final_data.csv*, the columns contain the **mean value of each subject for a given activity and measurement**




## Part 3: Original information from the authors:
Combined from the *readme.txt* and *feature_info.txt*
I decided to include this information, as it makes it easier for the reader to find all information in one file and, this is the most precise information to the data that could be found:

==================================================================  
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================  

*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.* 

*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.* 

*For each record it is provided:*
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

*The dataset includes the following files:*
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

*The following files are available for the train and test data. Their descriptions are equivalent.* 

- *'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.* 

- *'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.* 

- *'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. *

- *'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.* 

*Notes:* 
======
*- Features are normalized and bounded within [-1,1].*
*- Each feature vector is a row on the text file.*

*For more information about this dataset contact: activityrecognition@smartlab.ws*

*License:*
========
*Use of this dataset in publications must be acknowledged by referencing the following publication [1] *

*[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

*This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.*

*Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.*


###  *Feature Selection* 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

