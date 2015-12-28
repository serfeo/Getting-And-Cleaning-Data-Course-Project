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
| Name     | Description          |
|----------|----------------------|
|Subject.Id| Volunteer id: [1, 30]| 
|Activity.Id|type of activity: laying, sitting, standing, walking, walking_downstairs or walking_upstairs|
[TimeDomain.BodyAcceleration.Mean.X|Average of body triaxial acceleration signals average in time, in the X direction|
|TimeDomain.BodyAcceleration.Mean.Y|Average of body triaxial acceleration signals average in time, in the Y direction|
|TimeDomain.BodyAcceleration.Mean.Z|Average of body triaxial acceleration signals average in time, in the Z direction|
|TimeDomain.BodyAcceleration.StandardDeviation.X|Average of body triaxial acceleration signals standard deviation in time, in the X direction|
|TimeDomain.BodyAcceleration.StandardDeviation.Y|Average of body triaxial acceleration signals standard deviation in time, in the Y direction|
|TimeDomain.BodyAcceleration.StandardDeviation.Z|Average of body triaxial acceleration signals standard deviation in time, in the Z direction|
|TimeDomain.GravityAcceleration.Mean.X|Average of gravity triaxial acceleration signals average in time, in the X direction|
|TimeDomain.GravityAcceleration.Mean.Y|Average of gravity triaxial acceleration signals average in time, in the Y direction|
|TimeDomain.GravityAcceleration.Mean.Z|Average of gravity triaxial acceleration signals average in time, in the Z direction|
|TimeDomain.GravityAcceleration.StandardDeviation.X |Average of gravity triaxial acceleration signals standard deviation in time, in the X direction|
|TimeDomain.GravityAcceleration.StandardDeviation.Y |Average of gravity triaxial acceleration signals standard deviation in time, in the Y direction|
|TimeDomain.GravityAcceleration.StandardDeviation.Z |Average of gravity triaxial acceleration signals standard deviation in time, in the Z direction|
|TimeDomain.BodyAccelerationJerk.Mean.X|Average of body linear triaxial acceleation signals average in time to obtain Jerk signals, in the X direction|
|TimeDomain.BodyAccelerationJerk.Mean.Y|Average of body linear triaxial acceleration signals average in time to obtain Jerk signals, in the Y direction|
|TimeDomain.BodyAccelerationJerk.Mean.Z|Average of body linear triaxial acceleration signals average in time to obtain Jerk signals, in the Z direction|
|TimeDomain.BodyAccelerationJerk.StandardDeviation.X|Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the X direction|
|TimeDomain.BodyAccelerationJerk.StandardDeviation.Y|Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the Y direction|
|TimeDomain.BodyAccelerationJerk.StandardDeviation.Z|Average of body linear triaxial acceleration signals standard deviation in time to obtain Jerk signals, in the Z direction|
|TimeDomain.BodyAngularSpeed.Mean.X  |Average of body angular velocity average in time, in the X direction|
|TimeDomain.BodyAngularSpeed.Mean.Y  |Average of body angular velocity average in time, in the Y direction|
|TimeDomain.BodyAngularSpeed.Mean.Z  |Average of body angular velocity average in time, in the Z direction|
|TimeDomain.BodyAngularSpeed.StandardDeviation.X   |Average of body angular velocity standard deviation in time, using X raw signal|
|TimeDomain.BodyAngularSpeed.StandardDeviation.Y   |Average of body angular velocity standard deviation in time, using Y raw signal|
|TimeDomain.BodyAngularSpeed.StandardDeviation.Z   |Average of body angular velocity standard deviation in time, using Z raw signal|
|TimeDomain.BodyAngularSpeed.StandardDeviation.X|Average of body angular velocity average  in time to obtain Jerk signals, in the X direction|
|TimeDomain.BodyAngularSpeed.StandardDeviation.Y|Average of body angular velocity average  in time to obtain Jerk signals, in the Y direction|
|TimeDomain.BodyAngularSpeed.StandardDeviation.Z|Average of body angular velocity average  in time to obtain Jerk signals, in the Z direction|
|TimeDomain.BodyAngularAcceleration.Mean.X|Average of body angular velocity standard deviation in time to obtain Jerk signals, in the X direction|
|TimeDomain.BodyAngularAcceleration.Mean.Y|Average of body angular velocity standard deviation in time to obtain Jerk signals, in the Y direction|
|TimeDomain.BodyAngularAcceleration.Mean.Z|Average of body angular velocity standard deviation in time to obtain Jerk signals, in the Z direction|
|TimeDomain.BodyAccelerationMagnitude.Mean |Average of body linear acceleration magnitude average in time|
|TimeDomain.BodyAccelerationMagnitude.StandardDeviation  |Average of body linear acceleration magnitude standard deviation in time|
|TimeDomain.GravityAccelerationMagnitude.Mean|Average of gravity signals magnitude average in time|
|TimeDomain.GravityAccelerationMagnitude.StandardDeviation|Average of gravity signals magnitude standard deviation in time|
|TimeDomain.BodyAccelerationJerkMagnitude.Mean|Average of body linear acceleration magnitude average in time, in order to obtain Jerk signals|
|TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation|Average of body linear acceleration magnitude standard deviation in time, in order to obtain Jerk signals|
|TimeDomain.BodyAngularSpeedMagnitude.Mean|Average of body angular velocity magnitude average in time|
|TimeDomain.BodyAccelerationMagnitude.StandardDeviation |Average of body angular velocity magnitude standard deviation in time|
|TimeDomain.BodyAccelerationJerkMagnitude.Mean|Average of body angular velocity magnitude average  in time, in order to obtain Jerk signals|
|TimeDomain.GravityAccelerationMagnitude.StandardDeviation|Average of body angular velocity magnitude standard deviation in time, in order to obtain Jerk signals|
|FrequencyDomain.BodyAcceleration.MeanFrequency.X   |Average of body triaxial acceleration signals average in frequency domain signals, using the X direction|
|FrequencyDomain.BodyAcceleration.MeanFrequency.Y   |Average of body triaxial acceleration signals average in frequency domain signals, using the Y direction|
|FrequencyDomain.BodyAcceleration.MeanFrequency.Z   |Average of body triaxial acceleration signals average in frequency domain signals, using the Z direction|
|FrequencyDomain.BodyAcceleration.StandardDeviation.X|Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the X direction|
|FrequencyDomain.BodyAcceleration.StandardDeviation.Y|Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the Y direction|
|FrequencyDomain.BodyAcceleration.StandardDeviation.Z|Average of body triaxial acceleration signals standard deviation in frequency domain signals, using the Z direction|
|FrequencyDomain.BodyAccelerationJerk.MeanFrequency.X|Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the X direction|
|FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Y|Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the Y direction|
|FrequencyDomain.BodyAccelerationJerk.MeanFrequency.Z|Average of body triaxial acceleration signals average in frequency domain signals to obtain Jerk signals, in the Z direction|
|FrequencyDomain.BodyAccelerationJerk.StandardDeviation.X|Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the X direction|
|FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Y|Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the Y direction|
|FrequencyDomain.BodyAccelerationJerk.StandardDeviation.Z|Average of body triaxial acceleration signals standard deviation in frequency domain signals to obtain Jerk signals, in the Z direction|
|FrequencyDomain.BodyAngularSpeed.Mean.X  |Average of body angular velocity average in frequency domain signals, using the X direction|
|FrequencyDomain.BodyAngularSpeed.Mean.Y  |Average of body angular velocity average in frequency domain signals, using the Y direction|
|FrequencyDomain.BodyAngularSpeed.Mean.Z  |Average of body angular velocity average in frequency domain signals, using the Z direction|
|FrequencyDomain.BodyAngularSpeed.MeanFrequency.X   |Average of body angular velocity standar deviation in frequency domain signals, using the X direction|
|FrequencyDomain.BodyAngularSpeed.MeanFrequency.Y   |Average of body angular velocity standar deviation in frequency domain signals, using the Y direction|
|FrequencyDomain.BodyAngularSpeed.MeanFrequency.Z   |Average of body angular velocity standar deviation in frequency domain signals, using the Z direction|
|FrequencyDomain.BodyAccelerationMagnitude.Mean |Average of body linear acceleration magnitude average in frequency domain signals|
|FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation  |Average of body linear acceleration magnitude average in frequency domain signals|
|FrequencyDomain.BodyAccelerationJerkMagnitude.Mean|Average of body linear acceleration magnitude average in frequency domain signals, in order to obtain Jerk signals|
|FrequencyDomain.BodyAccelerationJerkMagnitude.StandardDeviation|Average of body linear acceleration magnitude standard deviation in frequency domain signals, in order to obtain Jerk signals|
|FrequencyDomain.BodyAngularAccelerationMagnitude.Mean|Average of body angular velocity magnitude average in frequency domain signals|
|FrequencyDomain.BodyAngularAccelerationMagnitude.StandardDeviation |Average of body angular velocity magnitude standard deviation in frequency domain signals|
|FrequencyDomain.BodyAngularAccelerationJerkMagnitude.Mean|Average of body angular velocity magnitude average  in frequency domain signals, in order to obtain Jerk signals|
|FrequencyDomain.BodyAngularAccelerationJerkMagnitude.StandardDeviation|Average of body angular velocity magnitude standard deviation  in frequency domain signals, in order to obtain Jerk signals|
