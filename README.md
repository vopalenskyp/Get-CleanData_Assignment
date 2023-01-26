---
title: "README"
author: "Pavel Vopalensky"
date: "2023-01-26"
output: html_document
---


### The files in the repository

This repository contains 5 files according to the final assignment of the Getting and Cleaning Data course offered by Coursera. Specifically you will find here these files:  
      1. *README.md* - the file you are currently reading. The file describes the content of the repository.  
      2. *Run_analysis.R* - R script file performing the required operations on the original files provided on the course page.  
      3. *Step4_final_data.csv* - the output of the steps 1-4 in the final assignment task. This file could be also generated by running the *Run_analysis.R* script. The file is a comma separated value format.  
      4. *Step5_smaller_data.csv* - the output of the 5th task of the assignment. Here, the data of the *Step4_final_data.csv* were grouped by the subject ID and the mean value for each subject and each activity calculated. The file could be generated by running the *Run_analysis.R* script.  
      5. *CodeBook.md* - a document describing the data files, their variables and transformations made by the script.  
  
### The *Run_analysis.R* script description  
For proper functioning of the script, the working directory should be set to the */UCI HAR Dataset* folder obtained upon unzipping the assignment data file *getdata_projectfiles_UCI HAR Dataset.zip*.  

The **input files** are:  

a) the files *x_train.txt* and *x_test.txt* dataset containing the values of the measurements preprocessed by the authors of the study and used as training and testing datasets. For more information about the study, follow this link: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  

b) the files *y_train.txt* and *y_test.txt* - containing the numerical code of the activity (see point c below) for each line of the *x_train.txt* and *x_text.txt* files (see above).  

c)  the file *activity_labels.txt* - containing the key of activity code (1 to 6) and the corresponding activity name (WALKING, WALKING_UPSTAIRS etc).  

d)  the file *features.txt* - containing the key for variable/feature code (1-561) and all corresponding feature(=variable) name (e.g.tBodyAcc-mean()-X, tBodyAcc-mean()-Y, etc, see the *CodeBook.md* for more details). The feature names are used as column names in the two output files see below).    

e) the file *subject_train.txt* and *subject_test.txt* containing the IDs (1-30) of subject (study participants) corresponding to the lines in the *x_train.txt* and *x_text.txt* files (see above).  

The **script performs the following operations** with the input data (see the script itself for more info in the comments):  
* First, the script merges the training and testing datasets (*x_train.txt* and *x_test.txt*) by rbind and extracts the 79 columns of the mean and std values.  
* Next, the script takes the *y_train.txt *, *y_test.txt* and *subject_train.txt / subject_test.txt* files to generate the activity ID column and subject ID column, respectively.  
* Then, the script uses the *features.txt*, *activity_labels.txt* to assign the feature description (=column names of the variables) and activity description.  

The **output files** of the script:  

a) *Step4_final_data.csv* - the output of the steps 1-4 in the final assignment task. This file could be also generated by running the *Run_analysis.R* script.  

b) *Step5_smaller_data.csv* - the output of the 5th task of the assignment. Here, the data of the *Step4_final_data.csv* were grouped by the subject ID and the mean value for each subject and each activity calculated. The file could be generated by running the *Run_analysis.R* script.  
