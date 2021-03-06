Getting and Cleaning Data Course Project
========================================

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers
on a series of yes/no questions related to the project.

You will be required to submit:

1. a tidy data set as described below
2. a link to a Github repository with your script for performing the analysis, and
3. a code book that describes the variables, the data, and any transformations or
   work that you performed to clean up the data called CodeBook.md. You should also
   include a README.md in the repo with your scripts. This file explains how all
   of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Files

* __CodeBook.md__: information about way to getting tidy data from raw and the format of tidy data
* __README.md__: this file
* __run_analysis.R__: R script for getting tidy data from raw
* __tidyDataSet.txt__: output of R script execution

## Using

1. clone this repository: `git@github.com:serfeo/Getting-And-Cleaning-Data-Course-Project.git`
2. open an R console and set the working directory to the repository root (use setwd()). There is no need to download data. It will download by script.
3. source run_analisys.R script: 
>> source('run_analysis.R')

In the repository root directory you find the file `tinyDataSet.txt` with the tidy data set.
