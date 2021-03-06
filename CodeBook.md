# Code Book for stu_tidy_data.txt
This is a data file that contains 68 variables and 180 rows. There is one row for each permutation of the 6 activities and the 30 subjects.
The original data comes from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables
   Variable Name		      Type	Values
 - activity_description             : chr  	"LAYING" "SITTING" "STANDING" "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS"
 - subject                          : int  	1 1 1 1 1 1 2 2 2 2 ...
 - mean_of_tBodyAcc_mean_X          : num  	0.222 0.261 0.279 0.277 0.289 ...
 - mean_of_tBodyAcc_mean_Y          : num  	-0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 - mean_of_tBodyAcc_mean_Z          : num  	-0.113 -0.105 -0.111 -0.111 -0.108 ...
 - mean_of_tBodyAcc_std_X           : num  	-0.928 -0.977 -0.996 -0.284 0.03 ...
 - mean_of_tBodyAcc_std_Y           : num  	-0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 - mean_of_tBodyAcc_std_Z           : num  	-0.826 -0.94 -0.98 -0.26 -0.23 ...
 - mean_of_tGravityAcc_mean_X       : num  	-0.249 0.832 0.943 0.935 0.932 ...
 - mean_of_tGravityAcc_mean_Y       : num  	0.706 0.204 -0.273 -0.282 -0.267 ...
 - mean_of_tGravityAcc_mean_Z       : num  	0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 - mean_of_tGravityAcc_std_X        : num  	-0.897 -0.968 -0.994 -0.977 -0.951 ...
 - mean_of_tGravityAcc_std_Y        : num  	-0.908 -0.936 -0.981 -0.971 -0.937 ...
 - mean_of_tGravityAcc_std_Z        : num  	-0.852 -0.949 -0.976 -0.948 -0.896 ...
 - mean_of_tBodyAccJerk_mean_X      : num  	0.0811 0.0775 0.0754 0.074 0.0542 ...
 - mean_of_tBodyAccJerk_mean_Y      : num  	0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 - mean_of_tBodyAccJerk_mean_Z      : num  	0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 - mean_of_tBodyAccJerk_std_X       : num  	-0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 - mean_of_tBodyAccJerk_std_Y       : num  	-0.924 -0.981 -0.986 0.067 -0.102 ...
 - mean_of_tBodyAccJerk_std_Z       : num  	-0.955 -0.988 -0.992 -0.503 -0.346 ...
 - mean_of_tBodyGyro_mean_X         : num  	-0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 - mean_of_tBodyGyro_mean_Y         : num  	-0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 - mean_of_tBodyGyro_mean_Z         : num  	0.1487 0.0629 0.0748 0.0849 0.0901 ...
 - mean_of_tBodyGyro_std_X          : num  	-0.874 -0.977 -0.987 -0.474 -0.458 ...
 - mean_of_tBodyGyro_std_Y          : num  	-0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 - mean_of_tBodyGyro_std_Z          : num  	-0.908 -0.941 -0.981 -0.344 -0.125 ...
 - mean_of_tBodyGyroJerk_mean_X     : num  	-0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 - mean_of_tBodyGyroJerk_mean_Y     : num  	-0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 - mean_of_tBodyGyroJerk_mean_Z     : num  	-0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 - mean_of_tBodyGyroJerk_std_X      : num  	-0.919 -0.992 -0.993 -0.207 -0.487 ...
 - mean_of_tBodyGyroJerk_std_Y      : num  	-0.968 -0.99 -0.995 -0.304 -0.239 ...
 - mean_of_tBodyGyroJerk_std_Z      : num  	-0.958 -0.988 -0.992 -0.404 -0.269 ...
 - mean_of_tBodyAccMag_mean         : num  	-0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 - mean_of_tBodyAccMag_std          : num  	-0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 - mean_of_tGravityAccMag_mean      : num  	-0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 - mean_of_tGravityAccMag_std       : num  	-0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 - mean_of_tBodyAccJerkMag_mean     : num  	-0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 - mean_of_tBodyAccJerkMag_std      : num  	-0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 - mean_of_tBodyGyroMag_mean        : num  	-0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 - mean_of_tBodyGyroMag_std         : num  	-0.819 -0.935 -0.979 -0.187 -0.226 ...
 - mean_of_tBodyGyroJerkMag_mean    : num  	-0.963 -0.992 -0.995 -0.299 -0.295 ...
 - mean_of_tBodyGyroJerkMag_std     : num  	-0.936 -0.988 -0.995 -0.325 -0.307 ...
 - mean_of_fBodyAcc_mean_X          : num  	-0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 - mean_of_fBodyAcc_mean_Y          : num  	-0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 - mean_of_fBodyAcc_mean_Z          : num  	-0.883 -0.959 -0.985 -0.332 -0.226 ...
 - mean_of_fBodyAcc_std_X           : num  	-0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 - mean_of_fBodyAcc_std_Y           : num  	-0.834 -0.917 -0.972 0.056 -0.113 ...
 - mean_of_fBodyAcc_std_Z           : num  	-0.813 -0.934 -0.978 -0.28 -0.298 ...
 - mean_of_fBodyAccJerk_mean_X      : num  	-0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 - mean_of_fBodyAccJerk_mean_Y      : num  	-0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 - mean_of_fBodyAccJerk_mean_Z      : num  	-0.948 -0.986 -0.991 -0.469 -0.288 ...
 - mean_of_fBodyAccJerk_std_X       : num  	-0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 - mean_of_fBodyAccJerk_std_Y       : num  	-0.932 -0.983 -0.987 0.107 -0.135 ...
 - mean_of_fBodyAccJerk_std_Z       : num  	-0.961 -0.988 -0.992 -0.535 -0.402 ...
 - mean_of_fBodyGyro_mean_X         : num  	-0.85 -0.976 -0.986 -0.339 -0.352 ...
 - mean_of_fBodyGyro_mean_Y         : num  	-0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 - mean_of_fBodyGyro_mean_Z         : num  	-0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 - mean_of_fBodyGyro_std_X          : num  	-0.882 -0.978 -0.987 -0.517 -0.495 ...
 - mean_of_fBodyGyro_std_Y          : num  	-0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 - mean_of_fBodyGyro_std_Z          : num  	-0.917 -0.944 -0.982 -0.437 -0.238 ...
 - mean_of_fBodyAccMag_mean         : num  	-0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 - mean_of_fBodyAccMag_std          : num  	-0.798 -0.928 -0.982 -0.398 -0.187 ...
 - mean_of_fBodyBodyAccJerkMag_mean : num  	-0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 - mean_of_fBodyBodyAccJerkMag_std  : num  	-0.922 -0.982 -0.993 -0.103 -0.104 ...
 - mean_of_fBodyBodyGyroMag_mean    : num  	-0.862 -0.958 -0.985 -0.199 -0.186 ...
 - mean_of_fBodyBodyGyroMag_std     : num  	-0.824 -0.932 -0.978 -0.321 -0.398 ...
 - mean_of_fBodyBodyGyroJerkMag_mean: num  	-0.942 -0.99 -0.995 -0.319 -0.282 ...
 - mean_of_fBodyBodyGyroJerkMag_std : num  	-0.933 -0.987 -0.995 -0.382 -0.392 ...

## More Information
More information on the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
