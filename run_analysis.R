
library(plyr)

#read features table
features <- read.table("UCI HAR Dataset/features.txt")

#read activity_labels table and add column names
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
names(activity_labels) <- c("activity_number","activity_description")

#read train data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#add column names
names(X_train) <- make.names(features$V2, unique = TRUE)
names(y_train) <- "activity_number"
names(subject_train) <- "subject"

#add activity description to y_train
y_train <- join(y_train, activity_labels)

#read test data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#add column names
names(X_test) <- make.names(features$V2, unique = TRUE)
names(y_test) <- "activity_number"
names(subject_test) <- "subject"

#add activity description to y_test
y_test <- join(y_test, activity_labels)

#list mean, standard deviation columns
mean_std_columns <- grep("\\bmean..\\b|\\bmean...\\b|std..",names(X_test), value = TRUE)

#create train table
#only using the mean, standard deviation columns
train <- cbind(activity_description = y_train[,2],
               subject_train,
               X_train[,mean_std_columns],
               stringsAsFactors = FALSE)

#create test table
#only using the mean, standard deviation columns
test <- cbind(activity_description = y_test[,2],
              subject_test,
              X_test[mean_std_columns],
              stringsAsFactors = FALSE)

#create merged data
merged <- rbind(train, test, stringsAsFactors = FALSE)

#clean up merged column names
names(merged) <- gsub("mean..", "mean", names(merged))
names(merged) <- gsub("std..", "std", names(merged))
names(merged) <- gsub(".", "_", names(merged), fixed = TRUE)

#create dataset with mean of each variable by subject and activity
#the 3:68 encompasses all but the first two variables of merged
#I am aggregating by the first two variables and giving them the
#same name they had before
average_merged <- aggregate(merged[,3:68], list(activity_description = merged$activity_description, subject = merged$subject), mean)

#add description to column names
#I want to keep the first two variable names the same and to add mean_of_ to
#the rest of the variable names.
names(average_merged) <- c(names(average_merged[,1:2]),paste("mean_of_", names(average_merged[,3:68]), sep = ""))

write.table(average_merged, "stu_tidy_data.txt", append = FALSE, row.names = FALSE)