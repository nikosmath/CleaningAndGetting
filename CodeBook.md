## Code Book

This code book summarizes and describes the data that are used in the R script:  ([run_analysis.R](run_analysis.R)).

## Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The aim of this Course project is to merge these two dataset and extract variables that contain average and standard deviation  values. Furthermore the aim is to summarize them per volunteer and activity taking the mean of these values.

## Explanation of the contents of every file used.

* `features.txt`: Descriptive labels of the 561 features.
* `activity_labels.txt`: Descriptive labels for each of the 6 activities.
* `X_train.txt`: 7352 observations of the 561 features, for 21 of the 30 volunteers in the training set.
* `subject_train.txt`: A vector of 7352 integers, illustrating volunteer's ID related to each  observation in `X_train.txt`.
* `y_train.txt`: A vector of 7352 integers, denoting the ID of the activity related to each observation in `X_train.txt`.
* `X_test.txt`: 2947 observations of the 561 variables, for 9 of the 30 volunteers in the test set.
* `subject_test.txt`: A vector of 2947 integers, illustrating volunteer's ID  related to each observation in `X_test.txt`.
* `y_test.txt`: A vector of 2947 integers, denoting the ID of the activity related to each observations in `X_test.txt`.

More information about the files is available in `README.txt` from the [zipfile](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). More information about the features is available in `features_info.txt`.

**Not used files**

The resulted tidy dataset was constructed using only the files above. The data files in the "Inertial Signals" folders, which are included in the raw data were not used in this project's tidy dataset.

## Processing steps of ([run_analysis.R](run_analysis.R))

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 