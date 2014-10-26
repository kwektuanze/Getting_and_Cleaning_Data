
=========================

##Getting and Cleaning Data Course Project

**Repository content**  

CodeBook.md: Code book for the course project  
README.md: This file which describes how the R script works  
run_analysis.R: R script that tidy the data set

**Creating the tidy data set**  

1. Unzip https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into working directory. A folder called "UCI HAR Dataset" will be created.

2. Put run_analysis.R into folder "UCI HAR Dataset".

3. In R console or RStudio, use setwd() to set working directory to folder "UCI HAR Dataset" and followed by source("run_analysis.R") to run the script. Note that the script requires the plyr package.

4. After the script is run, the tidy data set "tidy_data_set.txt" file can be found in folder "UCI HAR Dataset".