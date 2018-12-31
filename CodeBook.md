RAW DATA

  The raw data used for this course project is the Human Activity Recognition Using Smartphones Dataset which represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. 
  Said data set is contained in a zip file that can be downloaded using the link 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 
  The dataset includes the following files:
  - 'README.txt'
  - 'features_info.txt': Shows information about the variables used on the feature vector.
  - 'features.txt': List of all features (561 rows, 2 columns)
  - 'activity_labels.txt': Links the class labels with their activity name (6 rows, 2 columns)
  - 'train/X_train.txt': Training set. (7,352 rows, 561 columns)
  - 'train/y_train.txt': Training labels. (7,352 rows, 1 column)
  - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.(7,352 rows, 1 column)
  - 'test/X_test.txt': Test set. (2,947 rows, 561 columns)
  - 'test/y_test.txt': Test labels. (2,947 rows, 1 column)
  - 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. (2,947 rows, 1 column)

TIDY DATA

  The tidy data set created from the RAW DATA using the run_analysis.R script has 180 rows (observations) and 81 columns(variables - subject, activity, 79 measurements).
  It contains the average values of each 79 measurements for each subject and each activity.

VARIABLE NAMES

  - subject - identify the subject, integer, ranges from 1 to 30
  - activity - identify the activity performed by each subject, string, with 6 possible values:
      * WALKING: subject was walking
      * WALKING_UPSTAIRS: subject was walking upstairs
      * WALKING_DOWNSTAIRS: subject was walking downstairs
      * SITTING: subject was sitting
      * STANDING: subject was standing
      * LAYING: subject was laying
	- 
