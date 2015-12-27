Code Book
========

Raw data collection
-------------------

### Collection

Raw data are obtained from UCI Machine Learning repository. In particular we used
the *Human Activity Recognition Using Smartphones Data Set*,
that was used by the original collectors to conduct experiments exploiting
Support Vector Machine (SVM).

Activity Recognition (AR) aims to recognize the actions and goals of one or more agents
from a series of observations on the agents' actions and the environmental conditions. 
The collectors used a sensor based approach employing
smartphones as sensing tools. Smartphones are an effective solution for AR, because
they come with embedded built-in sensors such as microphones, dual cameras, accelerometers,
gyroscopes, etc.

The data set was built from experiments carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six activities
(walking, walking upstairs, walking downstairs, sitting, standing, laying)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity
were captured at a constant rate of 50Hz. The experiments have been video-recorded
to label the data manually.

The obtained data set has been randomly partitioned into two sets, where 70% of
the volunteers was selected for generating the training data and 30% the test data.

### Signals

The 3-axial time domain signals from accelerometer and gyroscope
were captured at a constant rate of 50 Hz. Then they were filtered
to remove noise.
Similarly, the acceleration signal was then separated into body and gravity
acceleration signals using another filter.
Subsequently, the body linear acceleration and angular velocity were derived in time
to obtain Jerk signals. Also the magnitude of these
three-dimensional signals were calculated using the Euclidean norm. 
Finally a Fast Fourier Transform (FFT) was applied to some of these
time domain signals to obtain frequency domain signals.

The signals were sampled in fixed-width sliding windows of 2.56 sec and 50% 
overlap (128 readings/window at 50 Hz).
From each window, a vector of features was obtained by calculating variables
from the time and frequency domain.

### SUMMARY OF EXPERIMENT
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The original data set has 10299 measurements in  563 variables, where all datas are normalized and bounded within [-1,1].

### DATA DESCRIPTION AND TRANSFORMATIONS
Only the measurements, on the mean and standard deviation, were extracted for each variable, that is why 66 variables are included into tidy data set. Then the average of each variable was calculated taking the volunteer and activity. Finally, tidy data has 180 measurements in 68 variables.

### DESCRIPTION OF VARIABLES
#### Subject.Id     
	volunteer number: 1, 2, 3, ... 28, 29 or 30 
#### ActivityId            
	type of activity: laying, sitting, standing, walking, walking_downstairs or walking_upstairs.
#### TimeDomain.BodyAcceleration.Mean.X       
	Average of body triaxial acceleration signals average in time, in the X direction.
#### TimeDomain.BodyAcceleration.Mean.Y       
	Average of body triaxial acceleration signals average in time, in the Y direction.
#### TimeDomain.BodyAcceleration.Mean.Z       
	Average of body triaxial acceleration signals average in time, in the Z direction.
#### TimeDomain.BodyAcceleration.StandardDeviation.X        
	Average of body triaxial acceleration signals standard deviation in time, in the X direction.
#### TimeDomain.BodyAcceleration.StandardDeviation.Y        
	Average of body triaxial acceleration signals standard deviation in time, in the Y direction.
#### TimeDomain.BodyAcceleration.StandardDeviation.Z        
	Average of body triaxial acceleration signals standard deviation in time, in the Z direction.
#### TimeDomain.GravityAcceleration.Mean.X    
	Average of gravity triaxial acceleration signals average in time, in the X direction.
#### TimeDomain.GravityAcceleration.Mean.Y   
	Average of gravity triaxial acceleration signals average in time, in the Y direction.
#### TimeDomain.GravityAcceleration.Mean.Z    
	Average of gravity triaxial acceleration signals average in time, in the Z direction.
#### TimeDomain.GravityAcceleration.StandardDeviation.X     
	Average of gravity triaxial acceleration signals standard deviation in time, in the X direction.
#### TimeDomain.GravityAcceleration.StandardDeviation.Y     
	Average of gravity triaxial acceleration signals standard deviation in time, in the Y direction.
#### TimeDomain.GravityAcceleration.StandardDeviation.Z     
	Average of gravity triaxial acceleration signals standard deviation in time, in the Z direction.
#### TimeDomain.BodyAccelerationJerk.Mean.X   
	Average of body linear triaxial acceleation signals average in time to obtain Jerk signals, in the X direction. 
#### TimeDomain.BodyAccelerationJerk.Mean.Y   
	Average of body linear triaxial acceleration signals average in time to obtain Jerk signals, in the Y direction. 
#### TimeDomain.BodyAccelerationJerk.Mean.Z   
	Average of body linear triaxial acceleration signals average in time to obtain Jerk signals, in the Z direction. 
#### TimeDomain.BodyAccelerationJerk.StandardDeviation.X    
	Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the X direction. 
#### TimeDomain.BodyAccelerationJerk.StandardDeviation.Y    
	Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the Y direction. 
#### TimeDomain.BodyAccelerationJerk.StandardDeviation.Z    
	Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the Z direction. 
#### TimeDomain.BodyAngularSpeed.Mean.X      
	Average of body angular velocity average in time, in the X direction. 
#### TimeDomain.BodyAngularSpeed.Mean.Y      
	Average of body angular velocity average in time, in the Y direction. 
#### TimeDomain.BodyAngularSpeed.Mean.Z      
	Average of body angular velocity average in time, in the Z direction. 
#### TimeDomain.BodyAngularSpeed.StandardDeviation.X       
	Average of body angular velocity standard deviation in time, using X raw signal
#### TimeDomain.BodyAngularSpeed.StandardDeviation.Y       
	Average of body angular velocity standard deviation in time, using Y raw signal
#### TimeDomain.BodyAngularSpeed.StandardDeviation.Z       
	Average of body angular velocity standard deviation in time, using Z raw signal
#### TimeDomain.BodyAngularSpeed.StandardDeviation.X  
	Average of body angular velocity average  in time to obtain Jerk signals, in the X direction.
#### TimeDomain.BodyAngularSpeed.StandardDeviation.Y  
	Average of body angular velocity average  in time to obtain Jerk signals, in the Y direction.
#### TimeDomain.BodyAngularSpeed.StandardDeviation.Z  
	Average of body angular velocity average  in time to obtain Jerk signals, in the Z direction.
#### TimeDomain.BodyAngularAcceleration.Mean.X   
	Average of body angular velocity standard deviation in time to obtain Jerk signals, in the X direction.
#### TimeDomain.BodyAngularAcceleration.Mean.Y   
	Average of body angular velocity standard deviation in time to obtain Jerk signals, in the Y direction.
#### TimeDomain.BodyAngularAcceleration.Mean.Z   
	Average of body angular velocity standard deviation in time to obtain Jerk signals, in the Z direction.
#### TimeDomain.BodyAccelerationMagnitude.Mean     
	Average of body linear acceleration magnitude average in time. 
#### TimeDomain.BodyAccelerationMagnitude.StandardDeviation      
	Average of body linear acceleration magnitude standard deviation in time. 
#### tgravityaccmagMean  
	Average of gravity signals magnitude average in time.
#### tgravityaccmagStd   
	Average of gravity signals magnitude standard deviation in time.
#### tbodyaccjerkmagMean 
	Average of body linear acceleration magnitude average in time, in order to obtain Jerk signals. 
#### tbodyaccjerkmagStd  
	Average of body linear acceleration magnitude standard deviation in time, in order to obtain Jerk signals. 
#### tbodygyromagMean    
	Average of body angular velocity magnitude average in time.
#### tbodygyromagStd     
	Average of body angular velocity magnitude standard deviation in time.
#### tbodygyrojerkmagMean
	Average of body angular velocity magnitude average  in time, in order to obtain Jerk signals.
#### tbodygyrojerkmagStd 
	Average of body angular velocity magnitude standard deviation in time, in order to obtain Jerk signals.
#### FrequencyDomain.BodyAcceleration.MeanFrequency.X       
	Average of body triaxial acceleration signals average in frequency domain signals, using the X direction.
#### FrequencyDomain.BodyAcceleration.MeanFrequency.Y       
	Average of body triaxial acceleration signals average in frequency domain signals, using the Y direction.
#### FrequencyDomain.BodyAcceleration.MeanFrequency.Z       
	Average of body triaxial acceleration signals average in frequency domain signals, using the Z direction.
#### FrequencyDomain.BodyAcceleration.StandardDeviation.X        
	Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the X direction.
#### FrequencyDomain.BodyAcceleration.StandardDeviation.Y        
	Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the Y direction.
#### FrequencyDomain.BodyAcceleration.StandardDeviation.Z        
	Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the Z direction.
#### FrequencyDomain.BodyAccelerationJerk.MeanFrequency.X   
	Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the X direction. 
#### FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Y   
	Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the Y direction. 
#### FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Z   
	Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the Z direction. 
#### FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X    
	Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the X direction. 
#### FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y    
	Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the Y direction. 
#### FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z    
	Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the Z direction. 
#### FrequencyDomain.BodyAngularSpeed.Mean.X      
	Average of body angular velocity average in frequency domain signals, using the X direction. 
#### FrequencyDomain.BodyAngularSpeed.Mean.Y      
	Average of body angular velocity average in frequency domain signals, using the Y direction.
#### FrequencyDomain.BodyAngularSpeed.Mean.Z      
	Average of body angular velocity average in frequency domain signals, using the Z direction.
#### FrequencyDomain.BodyAngularSpeed.MeanFrequency.X       
	Average of body angular velocity standar deviation in frequency domain signals, using the X direction.
#### FrequencyDomain.BodyAngularSpeed.MeanFrequency.Y       
	Average of body angular velocity standar deviation in frequency domain signals, using the X direction.
#### FrequencyDomain.BodyAngularSpeed.MeanFrequency.Z       
	Average of body angular velocity standar deviation in frequency domain signals, using the X direction.
#### fbodyaccmagMean     
	Average of body linear acceleration magnitude average in frequency domain signals. 
#### fbodyaccmagStd      
	Average of body linear acceleration magnitude average in frequency domain signals.
#### fbodyaccjerkmagMean 
	Average of body linear acceleration magnitude average in frequency domain signals, in order to obtain Jerk signals. 
#### fbodyaccjerkmagStd  
	Average of body linear acceleration magnitude standard deviation in frequency domain signals, in order to obtain Jerk signals. 
#### fbodygyromagMean    
	Average of body angular velocity magnitude average in frequency domain signals.
#### fbodygyromagStd     
	Average of body angular velocity magnitude standard deviation in frequency domain signals.
#### fbodygyrojerkmagMean
	Average of body angular velocity magnitude average  in frequency domain signals, in order to obtain Jerk signals.
#### fbodygyrojerkmagStd 
	Average of body angular velocity magnitude standard deviation  in frequency domain signals, in order to obtain Jerk signals.

Code Book
========

Raw data collection
-------------------

### Collection

Raw data are obtained from UCI Machine Learning repository. In particular we used
the *Human Activity Recognition Using Smartphones Data Set*,
that was used by the original collectors to conduct experiments exploiting
Support Vector Machine (SVM).

Activity Recognition (AR) aims to recognize the actions and goals of one or more agents
from a series of observations on the agents' actions and the environmental conditions. 
The collectors used a sensor based approach employing
smartphones as sensing tools. Smartphones are an effective solution for AR, because
they come with embedded built-in sensors such as microphones, dual cameras, accelerometers,
gyroscopes, etc.

The data set was built from experiments carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six activities
(walking, walking upstairs, walking downstairs, sitting, standing, laying)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded
accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity
were captured at a constant rate of 50Hz. The experiments have been video-recorded
to label the data manually.

The obtained data set has been randomly partitioned into two sets, where 70% of
the volunteers was selected for generating the training data and 30% the test data.

### Signals

The 3-axial time domain signals from accelerometer and gyroscope
were captured at a constant rate of 50 Hz. Then they were filtered
to remove noise.
Similarly, the acceleration signal was then separated into body and gravity
acceleration signals using another filter.
Subsequently, the body linear acceleration and angular velocity were derived in time
to obtain Jerk signals. Also the magnitude of these
three-dimensional signals were calculated using the Euclidean norm. 
Finally a Fast Fourier Transform (FFT) was applied to some of these
time domain signals to obtain frequency domain signals.

The signals were sampled in fixed-width sliding windows of 2.56 sec and 50% 
overlap (128 readings/window at 50 Hz).
From each window, a vector of features was obtained by calculating variables
from the time and frequency domain.

The set of variables that were estimated from these signals are: 

*  mean(): Mean value
*  std(): Standard deviation
*  mad(): Median absolute deviation 
*  max(): Largest value in array
*  min(): Smallest value in array
*  sma(): Signal magnitude area
*  energy(): Energy measure. Sum of the squares divided by the number of values. 
*  iqr(): Interquartile range 
*  entropy(): Signal entropy
*  arCoeff(): Autoregression coefficients with Burg order equal to 4
*  correlation(): Correlation coefficient between two signals
*  maxInds(): Index of the frequency component with largest magnitude
*  meanFreq(): Weighted average of the frequency components to obtain a mean frequency
*  skewness(): Skewness of the frequency domain signal 
*  kurtosis(): Kurtosis of the frequency domain signal 
*  bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT
   of each window.
*  angle(): Angle between some vectors.

No unit of measures is reported as all features were normalized and bounded
within [-1,1].

Data transformation
-------------------

The raw data sets are processed with run_analisys.R script to create a tidy data
set

### Merge training and test sets

Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt,
subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain
a single data set. Variables are labelled with the names assigned by original
collectors (features.txt).

### Extract mean and standard deviation variables

From the merged data set is extracted and intermediate data set with only the
values of estimated mean (variables with labels that contain "mean") and standard
deviation (variables with labels that contain "std").

### Use descriptive activity names

A new column is added to intermediate data set with the activity description.
Activity id column is used to look up descriptions in activity_labels.txt.

### Label variables appropriately

Labels given from the original collectors were changed:
* to obtain valid R names without parentheses, dashes and commas
* to obtain more descriptive labels

### Create a tidy data set

From the intermediate data set is created a final tidy data set where numeric
variables are averaged for each activity and each subject.

The tidy data set contains 10299 observations with 81 variables divided in:

*  an activity label (__Activity__): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
*  an identifier of the subject who carried out the experiment (__Subject__):
   1, 3, 5, 6, 7, 8, 11, 14, 15, 16, 17, 19, 21, 22, 23, 25, 26, 27, 28, 29, 30
*  a 79-feature vector with time and frequency domain signal variables (numeric)

The following table relates the 17 signals to the names used as prefix for the
variables names present in the data set. ".XYZ" denotes three variables, one for each axis.

Name                                  | Time domain                                 | Frequency domain
------------------------------------- | ------------------------------------------- | ------------------------------------------------
Body Acceleration                     | TimeDomain.BodyAcceleration.XYZ             | FrequencyDomain.BodyAcceleration.XYZ
Gravity Acceleration                  | TimeDomain.GravityAcceleration.XYZ          |
Body Acceleration Jerk                | TimeDomain.BodyAccelerationJerk.XYZ         | FrequencyDomain.BodyAccelerationJerk.XYZ
Body Angular Speed                    | TimeDomain.BodyAngularSpeed.XYZ             | FrequencyDomain.BodyAngularSpeed.XYZ
Body Angular Acceleration             | TimeDomain.BodyAngularAcceleration.XYZ      |
Body Acceleration Magnitude           | TimeDomain.BodyAccelerationMagnitude        | FrequencyDomain.BodyAccelerationMagnitude
Gravity Acceleration Magnitude        | TimeDomain.GravityAccelerationMagnitude     |
Body Acceleration Jerk Magnitude      | TimeDomain.BodyAccelerationJerkMagnitude    | FrequencyDomain.BodyAccelerationJerkMagnitude
Body Angular Speed Magnitude          | TimeDomain.BodyAngularSpeedMagnitude        | FrequencyDomain.BodyAngularSpeedMagnitude
Body Angular Acceleration Magnitude   | TimeDomain.BodyAngularAccelerationMagnitude | FrequencyDomain.BodyAngularAccelerationMagnitude

For variables derived from mean and standard deviation estimation, the previous labels
are augmented with the terms "Mean" or "StandardDeviation".

The data set is written to the file tinyDataSet.txt.

