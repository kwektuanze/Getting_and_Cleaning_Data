require(plyr)

# 1. Merges the training and the test sets to create one data set.
trainX <- read.table("train/X_train.txt")
testX <- read.table("test/X_test.txt")
X <- rbind(trainX, testX)

trainY <- read.table("train/y_train.txt")
testY <- read.table("test/y_test.txt")
Y <- rbind(trainY, testY)

trainSubject <- read.table("train/subject_train.txt")
testSubject <- read.table("test/subject_test.txt")
Subject <- rbind(trainSubject, testSubject)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
requiredFeatures <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
# Keep only the required measurements 
X <- X[, requiredFeatures]
names(X) <- features[requiredFeatures, 2]
# Remove brackets ()
names(X) <- gsub("\\(|\\)", "", names(X))

# 3. Uses descriptive activity names to name the activities in the data set.
activities <- read.table("activity_labels.txt")
# Join activity labels with the data set
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"

# 4. Appropriately labels the data set with descriptive activity names.
names(Subject) <- "subject"
firstDataSet <- cbind(Subject, Y, X)

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
result = ddply(firstDataSet, c("subject","activity"), numcolwise(mean))

write.table(result, "tidy_data_set.txt", row.names=FALSE)