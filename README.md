# Getting_Cleaning_Data

## Summary
I used a handful of functions and steps to take the data provided in the assignment and turn it into a tidy data set. I used the grep() and gsub() functions which are part of the plyr package. Otherwise, the functions are all part of the base R package

## Functions used
- read.table()
- names()
- make.names()
- join()
- grep()
- cbind()
- rbind()
- gsub()
- paste()
- list()
- mean()
- aggregate()

## Assumptions
In order to determine which variables should be included I decided to include any variable with a name ending in "mean" or "mean...X/Y/Z"
I used the grep() function to search for those variables and put the names into a vector. I then used that vector later when I used cbind() to add the activity description and subject.
I prefer underscores to points in variable names and since the make.names() function created a lot of variable names with two or three consecutive points, I used a series of gsub() to rename the variables into something that I consider to be much more clean looking.

### Comments
For the final data set I just used the aggregate() function to get the mean by activity and subject.
