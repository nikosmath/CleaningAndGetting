## This script tides up acquired data from 
## Human Activity Recognition Using Smartphones data set. Here the variables
## that contract the resulting tidy set, are all the mean() and std() collected 
## variables. 

# Load packages for the merging and summarize
library(reshape2)

##### Step 1 ####

# Code part merges training and test data sets in one.
features_data<-read.table("features.txt",header=F)
features_data$V3<-as.character(features_data$V2)

## Training set
# First load the subject ID file, then variables file and
# the extra activity variable. Then combine them all
# to a single data.frame
subject_train_set<-read.table("subject_train.txt")  
train_set_X<-read.table("X_train.txt")             
train_set_Y<-read.table("Y_train.txt")              
names(train_set_Y)<-"activity"                   
names(subject_train_set)<-"Subject_ID"             
names(train_set_X)<-features_data$V3                       
training_set<-cbind(subject_train_set,train_set_Y,train_set_X) 

## Test set
# Follow the same procedure as the training set for the test set
subject_test_set<-read.table("subject_test.txt") 
test_set_X<-read.table("X_test.txt")              
test_set_Y<-read.table("Y_test.txt")            
names(test_set_Y)<-"activity"                    
names(subject_test_set)<-"Subject_ID"          
names(test_set_X)<-features_data$V3                       
testing_set<-cbind(subject_test_set,test_set_Y,test_set_X)  

## Merge traing and testing sets
merged_set<-rbind(training_set,testing_set)

##### Step 2 ####
# Here all colums been selected that contained mean() or std() variables.
# meanFreq variables is not selected in this exercise 
selected_col <- grepl("mean\\(\\)|std\\(\\)", names(merged_set)) 
# Make also the id and activity column true in order to select it together
selected_col[1:2]<-TRUE      
subset_ms<-merged_set[,selected_col]

##### Step 3 & 4 ####
# Step 3 is ready from the set 
# Appropriately labels the data set with descriptive variable names.
read_activity<-read.table("activity_labels.txt") #import activity names
my_labels<-as.character(read_activity$V2)
subset_ms$activity<-factor(subset_ms$activity,labels=my_labels) 

##### Step 5 ####
# Creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject. 

melted_data<-melt(merged_set,id=c("Subject_ID","activity"))
tidy_data<-dcast(melted_data,Subject_ID+activity~variable, mean)

# Write and execute the Output .txt file
write.table(tidy_data, "tidy.txt",row.names=FALSE)
