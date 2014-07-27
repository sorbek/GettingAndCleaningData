files <- unzip("getdata-projectfiles-UCI HAR Dataset.zip")

# read in the train and test sets
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# merge the train and test sets
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

# read in features
features <- read.table("UCI HAR Dataset/features.txt")

# select features containing 'mean' or 'std'
features <- features[(grep("mean|std", features$V2, ignore.case = TRUE)),]

# discard 'meanFreq' and 'angle' features, since they are not a mean or
# std measurement, per se, but may rely on one (eg. gravityMean)
features <- features[(grep("meanfreq|angle", features$V2, ignore.case = TRUE, invert = TRUE)),]

features_cols <- paste("V", features$V1, sep = "")

# extract only the mean and standard deviation measurements
x <- x[features_cols]

# do some naming/renaming
names(subject) <- "Subject"
names(y) <- "Activity"
names(x) = features$V2

# remove parenthesis from names
names(x) <- gsub("\\(\\)", "", names(x))

# create combined data set
tidy_data <- cbind(subject, y, x)

# read in activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# replace activity labels to activity values
tidy_data$Activity <- factor(tidy_data$Activity, levels = activities$V1, labels = activities$V2)

# step 5: create tidy data set with averages
tidy_averages <- aggregate(tidy_data[, 3:68],
                           by = list(tidy_data$Subject, tidy_data$Activity),
                           FUN = mean)
# rename Group.X columns
colnames(tidy_averages)[1:2] <- c("Subject", "Activity")

# output the tidy data files
write.csv(tidy_data, file = "tidy_data.csv.txt")
write.csv(tidy_averages, file = "tidy_averages.csv.txt")

