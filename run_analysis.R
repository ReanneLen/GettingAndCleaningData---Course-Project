#Setting the wokring directory
setwd("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4")

#Checking the files currently in the working directory
list.files("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4")

#Downloading the zip file containing the data set to be used
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/courseproject.zip", method = "curl")

#Checking whether the zip file was succesfully downloaded
list.files("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4")

#Unzipping the zip file and checking the name of the folder of the unzipped file
#Checking also the files inside the unzipped file
unzip("courseproject.zip")
list.files("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4")
list.files("UCI HAR Dataset")

#Reading and viewing the data files
#Viewing of the data files is optional. I just want to always see what the data file looks like as well as its contents

#Reading the features and activity labels files
features <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/features.txt", col.names = c("code", "estimate"))
activitylabels <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/activity_labels.txt", col.names = c("labels", "activity"))
View(features)
View(activitylabels)

#Reading the training data files
xtrain <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/train/X_train.txt")
colnames(xtrain) <- features[,2]
ytrain <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/train/y_train.txt", col.names = "labels")
subtrain <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
View(xtrain)
View(ytrain)
View(subtrain)

#Reading the test data files
xtest <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/test/X_test.txt")
colnames(xtest) <- features[,2]
ytest <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/test/y_test.txt", col.names = "labels")
subtest <- read.table("C:/Users/Reannelen/Desktop/DOST-Coursera/Getting and Cleaning Data - Week 4/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
View(xtest)
View(ytest)
View(subtest)

#Merging the training and test data sets
#Viewing of the merged data is again optional
traindata <- cbind(subtrain, ytrain, xtrain)
testdata <- cbind(subtest, ytest, xtest)
fulldata <- rbind(traindata, testdata)
View(traindata)
View(testdata)

#Extracting the measurements on the mean and standard deviation for each measurement
keepcolumn <- grepl("subject|labels|mean|std", colnames(fulldata))
fulldatasub <- fulldata[,keepcolumn]
View(fulldatasub)

#Use descriptive activy names to name the activities in the dat set
fulldatasub$labels <- factor(fulldatasub$labels, levels = activitylabels[,1], labels = activitylabels[,2])
View(fulldatasub)

#Appropriately lable the data set with descriptive variable names
names(fulldatasub)[2] = "activity"
names(fulldatasub) <- gsub("^t", "time", names(fulldatasub))
names(fulldatasub) <- gsub("^f", "frequency", names(fulldatasub))
names(fulldatasub) <- gsub("Acc", "accelerometer", names(fulldatasub))
names(fulldatasub) <- gsub("Gyro", "gyrosccope", names(fulldatasub))
names(fulldatasub) <- gsub("Mag", "magnitude", names(fulldatasub))
names(fulldatasub) <- gsub("Body", "body", names(fulldatasub))
names(fulldatasub) <- gsub("BodyBody", "body", names(fulldatasub))
names(fulldatasub) <- gsub("Gravity", "gravity", names(fulldatasub))
names(fulldatasub) <- gsub("Jerk", "jerk", names(fulldatasub))
names(fulldatasub) <- gsub("-mean", "mean", names(fulldatasub), ignore.case = TRUE)
names(fulldatasub) <- gsub("-std", "stdev", names(fulldatasub), ignore.case = TRUE)
names(fulldatasub) <- gsub("-meanFreq", "meanfrequency", names(fulldatasub), ignore.case = TRUE)
names(fulldatasub) <- gsub("[-()]", "", names(fulldatasub))
View(fulldata)

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
fulldatasubmelt <- melt(fulldatasub, id = c("subject", "activity"))
secondata <- dcast(fulldatasubmelt, subject + activity ~ variable, mean)
View(secondata)
write.table(secondata, "tidy_data.txt", row.names = FALSE, quote = FALSE)