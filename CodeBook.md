# RAW DATA
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

# TIDY DATA
  The tidy data set created from the RAW DATA using the run_analysis.R script has 180 rows (observations) and 81 columns(variables - subject, activity, 79 measurements).
  It contains the average values of each 79 measurements for each subject and each activity. The 79 measurements represent the estimate variables coming from the accelerometer and gyroscope 3-axial raw signals where the acceleration measurements (variables containing 'accelerometer') were made in g's (9.81 m.s⁻²) and gyroscope measurements (variables containing 'gyroscope') were made in radians per second (rad.s⁻¹).
  
# VARIABLE NAMES
  - subject - identify the subject, integer, ranges from 1 to 30
  - activity - identify the activity performed by each subject, string, with 6 possible values:
      * WALKING: subject was walking
      * WALKING_UPSTAIRS: subject was walking upstairs
      * WALKING_DOWNSTAIRS: subject was walking downstairs
      * SITTING: subject was sitting
      * STANDING: subject was standing
      * LAYING: subject was laying
  - timebodyaccelerometermeanX - mean value of the time-domain body acceleration in the X direction, numeric, ranges from [-1,1]
  - timebodyaccelerometermeanY - mean value of the time-domain body acceleration in the Y direction, numeric, ranges from [-1,1]
  - timebodyaccelerometermeanZ - mean value of the time-domain body acceleration in the Z direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerstdevX - standard deviation value of the time-domain body acceleration in the X direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerstdevY - standard deviation value of the time-domain body acceleration in the Y direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerstdevZ - standard deviation value of the time-domain body acceleration in the Z direction, numeric, ranges from [-1,1]
  - timegravityaccelerometermeanX - mean value of the time-domain gravity acceleration in the X direction, numeric, ranges from [-1,1]
  - timegravityaccelerometermeanY - mean value of the time-domain gravity acceleration in the Y direction, numeric, ranges from [-1,1]
  - timegravityaccelerometermeanZ - mean value of the time-domain gravity acceleration in the Z direction, numeric, ranges from [-1,1]
  - timegravityaccelerometerstdevX - standard deviation value of the time-domain gravity acceleration in the X direction, numeric, ranges from [-1,1]
  - timegravityaccelerometerstdevY - standard deviation value of the time-domain gravity acceleration in the Y direction, numeric, ranges from [-1,1]
  - timegravityaccelerometerstdevZ - standard deviation value of the time-domain gravity acceleration in the Z direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkmeanX - mean value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkmeanY - mean value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the Y direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkmeanZ - mean value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the Z direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkstdevX - standard deviation value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkstdevY - standard deviation value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the Y direction, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkstdevZ - standard deviation value of the time-domain body acceleration jerk (derivation of the acceleration in time) in the Z direction, numeric, ranges from [-1,1]
  - timebodygyrosccopemeanX - mean value of the time-domain body angular velocity in the X direction, numeric, ranges from [-1,1]
  - timebodygyrosccopemeanY - mean value of the time-domain body angular velocity in the Y direction, numeric, ranges from [-1,1]
  - timebodygyrosccopemeanZ - mean value of the time-domain body angular velocity in the Z direction, numeric, ranges from [-1,1]
  - timebodygyrosccopestdevX - standard deviation value of the time-domain body angular velocity in the X direction, numeric, ranges from [-1,1]
  - timebodygyrosccopestdevY - standard deviation value of the time-domain body angular velocity in the Y direction, numeric, ranges from [-1,1]
  - timebodygyrosccopestdevZ - standard deviation value of the time-domain body angular velocity in the Z direction, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkmeanX - mean value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X directions, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkmeanY - mean value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the Y directions, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkmeanZ - mean value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the Z directions, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkstdevX - standard deviation value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X directions, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkstdevY - standard deviation value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the Y directions, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkstdevZ - standard deviation value of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the Z directions, numeric, ranges from [-1,1]
  - timebodyaccelerometermagnitudemean - mean value of the time-domain magnitude of body acceleration, numeric, ranges from [-1,1]
  - timebodyaccelerometermagnitudestdev - standard deviation value of the time-domain magnitude of body acceleration, numeric, ranges from [-1,1]
  - timegravityaccelerometermagnitudemean - mean value of the time-domain magnitude of gravity acceleration, numeric, ranges from [-1,1]
  - timegravityaccelerometermagnitudestdev - standard deviation value of the time-domain magnitude of gravity acceleration, numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkmagnitudemean - mean value of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time), numeric, ranges from [-1,1]
  - timebodyaccelerometerjerkmagnitudestdev - standard deviation value of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time), numeric, ranges from [-1,1]
  - timebodygyrosccopemagnitudemean - mean value of the time-domain magnitude of body angular velocity, numeric, ranges from [-1,1]
  - timebodygyrosccopemagnitudestdev - standard deviation value of the time-domain magnitude of body angular velocity, numeric, ranges from [-1,1]
  - timebodygyrosccopejerkmagnitudemean - mean value of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time), numeric, ranges from [-1,1]
  - timebodygyrosccopejerkmagnitudestdev - standard deviation value of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time), numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanX - mean value of the frequency-domain body acceleration in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanY - mean value of the frequency-domain body acceleration in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanZ - mean value of the frequency-domain body acceleration in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerstdevX - standard deviation value of the frequency-domain body acceleration in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerstdevY - standard deviation value of the frequency-domain body acceleration in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerstdevZ - standard deviation value of the frequency-domain body acceleration in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanFreqX - weighted average value of the frequency components of the frequency-domain body acceleration in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanFreqY - weighted average value of the frequency components of the frequency-domain body acceleration in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermeanFreqZ - weighted average value of the frequency components of the frequency-domain body acceleration in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanX - mean value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanY - mean value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanZ - mean value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkstdevX - standard deviation value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkstdevY - standard deviation value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkstdevZ - standard deviation value of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanFreqX - weighted average value of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanFreqY - weighted average value of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Y direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometerjerkmeanFreqZ - weighted average value of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the Z direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanX - mean value of the frequency-domain body angular velocity in the X direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanY - mean value of the frequency-domain body angular velocity in the Y direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanZ - mean value of the frequency-domain body angular velocity in the Z direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopestdevX - standard deviation value of the frequency-domain body angular velocity in the X direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopestdevY - standard deviation value of the frequency-domain body angular velocity in the Y direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopestdevZ - standard deviation value of the frequency-domain body angular velocity in the Z direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanFreqX - weighted average value of the frequency components of the frequency-domain body angular velocity in the X direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanFreqY - weighted average value of the frequency components of the frequency-domain body angular velocity in the Y direction, numeric, ranges from [-1,1]
  - frequencybodygyrosccopemeanFreqZ - weighted average value of the frequency components of the frequency-domain body angular velocity in the Z direction, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermagnitudemean - mean value of the frequency components of the frequency-domain magnitude of body acceleration, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermagnitudestdev - standard deviation value of the frequency components of the frequency-domain magnitude of body acceleration, numeric, ranges from [-1,1]
  - frequencybodyaccelerometermagnitudemeanFreq - weighted average value of the frequency components of the frequency-domain magnitude of body acceleration, numeric, ranges from [-1,1]
  - frequencybodybodyaccelerometerjerkmagnitudemean - mean value of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time), numeric, ranges from [-1,1]
  - frequencybodybodyaccelerometerjerkmagnitudestdev - standard deviation value of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time), numeric, ranges from [-1,1]
  - frequencybodybodyaccelerometerjerkmagnitudemeanFreq - weighted average value of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time), numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopemagnitudemean - mean value of the frequency components of the frequency-domain magnitude of body angular velocity, numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopemagnitudestdev - standard deviation value of the frequency components of the frequency-domain magnitude of body angular velocity, numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopemagnitudemeanFreq - weighted average value of the frequency components of the frequency-domain magnitude of body angular velocity, numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopejerkmagnitudemean - mean value of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time), numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopejerkmagnitudestdev - standard deviation value of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time), numeric, ranges from [-1,1]
  - frequencybodybodygyrosccopejerkmagnitudemeanFreq - weighted average value of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time), numeric, ranges from [-1,1]
