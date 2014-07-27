# Codebook #

The dataset used in this course project was obtained from the
[UCI Machine Learning Respository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

A full description of the source dataset is available from the website.

## Data Processing ##

The run_analysis.R script does the following:

- Read in the training and test sets
- Merge the training and test sets into interim data sets
- Read in the features list
- Select the means and standard deviation features (numbering 66 features of interest)
  from the feature list
- Subset the primary interim data set by selecting only data of the features of interest
- Process subject and activity label data.
- Add processed subject and activity data to the subsetted primary interim data set, to
  create the tidy data set.
- Output the tidy data set to **tidy\_data.csv.txt**
- Calculate the average measurement of each feature of interest for each activity and
  each subject, to create the tidy averages data set. The tidy averages data set is
  comprised of 180 rows (30 subjects, each with 6 activities) and 68 columns (1 column
  for each of subject and activity, plus 66 columns for the features of interest).
- Output the tidy averages data set to **tidy\_averages.csv.txt**

## Variable Names ##

> Note regarding variable names:
>
> - names starting with **t** are time domain
> - names starting with **f** are frequency domain
> - names containing **\-mean\-** represent means
> - names containing **\-std\-** represent standard deviations
> - names ending with **X**, **Y** and **Z** are axial in their respective directions

1. Subject
1. Activity

1. tBodyAcc\-mean\-X
1. tBodyAcc\-mean\-Y
1. tBodyAcc\-mean\-Z

1. tBodyAcc\-std\-X
1. tBodyAcc\-std\-Y
1. tBodyAcc\-std\-Z

1. tGravityAcc\-mean\-X
1. tGravityAcc\-mean\-Y
1. tGravityAcc\-mean\-Z

1. tGravityAcc\-std\-X
1. tGravityAcc\-std\-Y
1. tGravityAcc\-std\-Z

1. tBodyAccJerk\-mean\-X
1. tBodyAccJerk\-mean\-Y
1. tBodyAccJerk\-mean\-Z

1. tBodyAccJerk\-std\-X
1. tBodyAccJerk\-std\-Y
1. tBodyAccJerk\-std\-Z

1. tBodyGyro\-mean\-X
1. tBodyGyro\-mean\-Y
1. tBodyGyro\-mean\-Z

1. tBodyGyro\-std\-X
1. tBodyGyro\-std\-Y
1. tBodyGyro\-std\-Z

1. tBodyGyroJerk\-mean\-X
1. tBodyGyroJerk\-mean\-Y
1. tBodyGyroJerk\-mean\-Z

1. tBodyGyroJerk\-std\-X
1. tBodyGyroJerk\-std\-Y
1. tBodyGyroJerk\-std\-Z

1. tBodyAccMag\-mean
1. tBodyAccMag\-std

1. tGravityAccMag\-mean
1. tGravityAccMag\-std

1. tBodyAccJerkMag\-mean
1. tBodyAccJerkMag\-std

1. tBodyGyroMag\-mean
1. tBodyGyroMag\-std

1. tBodyGyroJerkMag\-mean
1. tBodyGyroJerkMag\-std

1. fBodyAcc\-mean\-X
1. fBodyAcc\-mean\-Y
1. fBodyAcc\-mean\-Z

1. fBodyAcc\-std\-X
1. fBodyAcc\-std\-Y
1. fBodyAcc\-std\-Z

1. fBodyAccJerk\-mean\-X
1. fBodyAccJerk\-mean\-Y
1. fBodyAccJerk\-mean\-Z

1. fBodyAccJerk\-std\-X
1. fBodyAccJerk\-std\-Y
1. fBodyAccJerk\-std\-Z

1. fBodyGyro\-mean\-X
1. fBodyGyro\-mean\-Y
1. fBodyGyro\-mean\-Z

1. fBodyGyro\-std\-X
1. fBodyGyro\-std\-Y
1. fBodyGyro\-std\-Z

1. fBodyAccMag\-mean
1. fBodyAccMag\-std

1. fBodyBodyAccJerkMag\-mean
1. fBodyBodyAccJerkMag\-std

1. fBodyBodyGyroMag\-mean
1. fBodyBodyGyroMag\-std

1. fBodyBodyGyroJerkMag\-mean
1. fBodyBodyGyroJerkMag\-std

## Variable Units ##

1. Subject : numerical identifier of the subject who carried out the experiment (1 to 30, inclusive)
1. Activity : character description of the activity name
   - WALKING
   - WALKING_UPSTAIRS
   - WALKING_DOWNSTAIRS
   - SITTING
   - STANDING
   - LAYING

1. tBodyAcc\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyAcc\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyAcc\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyAcc\-std\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyAcc\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyAcc\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. tGravityAcc\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. tGravityAcc\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. tGravityAcc\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. tGravityAcc\-std\-X : no units; normalized and bounded within [\-1, 1]
1. tGravityAcc\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. tGravityAcc\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyAccJerk\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyAccJerk\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyAccJerk\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyAccJerk\-std\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyAccJerk\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyAccJerk\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyGyro\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyGyro\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyGyro\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyGyro\-std\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyGyro\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyGyro\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyGyroJerk\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroJerk\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroJerk\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyGyroJerk\-std\-X : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroJerk\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroJerk\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. tBodyAccMag\-mean : no units; normalized and bounded within [\-1, 1]
1. tBodyAccMag\-std : no units; normalized and bounded within [\-1, 1]

1. tGravityAccMag\-mean : no units; normalized and bounded within [\-1, 1]
1. tGravityAccMag\-std : no units; normalized and bounded within [\-1, 1]

1. tBodyAccJerkMag\-mean : no units; normalized and bounded within [\-1, 1]
1. tBodyAccJerkMag\-std : no units; normalized and bounded within [\-1, 1]

1. tBodyGyroMag\-mean : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroMag\-std : no units; normalized and bounded within [\-1, 1]

1. tBodyGyroJerkMag\-mean : no units; normalized and bounded within [\-1, 1]
1. tBodyGyroJerkMag\-std : no units; normalized and bounded within [\-1, 1]

1. fBodyAcc\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyAcc\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyAcc\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyAcc\-std\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyAcc\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyAcc\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyAccJerk\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyAccJerk\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyAccJerk\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyAccJerk\-std\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyAccJerk\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyAccJerk\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyGyro\-mean\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyGyro\-mean\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyGyro\-mean\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyGyro\-std\-X : no units; normalized and bounded within [\-1, 1]
1. fBodyGyro\-std\-Y : no units; normalized and bounded within [\-1, 1]
1. fBodyGyro\-std\-Z : no units; normalized and bounded within [\-1, 1]

1. fBodyAccMag\-mean : no units; normalized and bounded within [\-1, 1]
1. fBodyAccMag\-std : no units; normalized and bounded within [\-1, 1]

1. fBodyBodyAccJerkMag\-mean : no units; normalized and bounded within [\-1, 1]
1. fBodyBodyAccJerkMag\-std : no units; normalized and bounded within [\-1, 1]

1. fBodyBodyGyroMag\-mean : no units; normalized and bounded within [\-1, 1]
1. fBodyBodyGyroMag\-std : no units; normalized and bounded within [\-1, 1]

1. fBodyBodyGyroJerkMag\-mean : no units; normalized and bounded within [\-1, 1]
1. fBodyBodyGyroJerkMag\-std : no units; normalized and bounded within [\-1, 1]

