## Course Assesment Project for "Getting and Cleaning Data"

This is a repo for [Getting and Cleaning Data](https://www.coursera.org/course/getdata) course assesment.
This repo contains an R script ([run_analysis.R](run_analysis.R)) that creates and summarizes  a tidy data set as a part of  ["Human Activity Recognition Using Smartphones"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) data set.

**To reproduce the same analysis, please follow the following steps**

1. Download the data zip file to your home directory from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip the file.
3. Mirror all the files used in `read.table()` command to the saved directory.
4. The used files are:
        * `features.txt`
	* `subject_train.txt`
	* `X_train.txt`
	* `X_test.txt`
	* `subject_test.txt`
	* `y_train.txt`
	* `y_test.txt`
5. Load the R package [reshape2](http://cran.r-project.org/web/packages/reshape2/index.html).
6. Run the R script ([run_analysis.R](run_analysis.R)).
7. This script outputs the followinf file the .txt file [tidy.txt](tidy.txt).


For further information see [CodeBook](CodeBook.md).