# Getting-and-Cleaning-Data-Assignment

Background of the experiment:
=========================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record the raw data is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The cleaning and transformation done in run_analysis.R:
=========================================

-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.Those are the features whose name contains "mean()" or "std()"
-Uses descriptive activity names to name the activities in the data set. This is a mapping of activity lables.
-Appropriately labels the data set with descriptive variable names. This is to map feature names to the data, removing "()" to make it slightly shorter and still descriptive.
-creates a second, independent tidy data set with the average of each variable for each activity and each subject. This is to use group_by to group the data by activity and subject, then use summarize_all to calculate mean of each variable.

The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md'

- 'run_analysis.R'

The tidy data set is uploaded on Coursera separately.


Notes: 
======
- Features in raw data are normalized and bounded within [-1,1].
