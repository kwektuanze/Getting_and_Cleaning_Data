Course Project Code Book
=========================

Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The attached R script (run_analysis.R) create a tidy data set by the following:

1. **Merge training and test sets.** Test and training data (X_train.txt, X_test.txt), subject ids (subject_train.txt, subject_test.txt) and activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set.

2. **Extract mean and standard deviation variables.** Reads features.txt and extracts only the measurements on the mean (variables that contain "mean") and standard deviation (variables that contain "std") for each measurement.

3. **Use descriptive activity names.** Reads activity_labels.txt and applies descriptive activity names to name the activity id in the data set. The descriptive activities are LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

4. **Label the data set with descriptive variable names.** Brackets are removed from feature names (variables). The data frame containing features merges with the data frames containing activity labels and subject IDs. The intermediate data set is called firstDataSet with the first column contains subject IDs, the second column activity names, and the last 66 columns are measurements. Subject IDs are integers between 1 and 30 inclusive.

5. **Create a tidy data set.** From the intermediate data set firstDataSet, the script creates a second, independent tidy data set with the average of each variable for each activity and each subject. The result is saved as tidy_data_set.txt, a 180x68 data frame, the first column contains subject IDs, the second column contains activity names and the averages for each of the 66 attributes (mean and standard deviation) are in columns 3 to 68. There are 30 subjects and 6 activities, thus 180 rows in this data set with averages.