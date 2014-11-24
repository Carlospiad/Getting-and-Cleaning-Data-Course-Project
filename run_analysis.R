## Install data.table package first



# Create variables and load labels into R
activity_labels <- read.table('dataset/activity_labels.txt')
features <- read.table('dataset/features.txt')
train_labels <- read.table('dataset/train/y_train.txt')
test_labels <- read.table('dataset/test/y_test.txt')


#Create variables and load data sets
train_s <- read.table('dataset/train/X_train.txt')
test_s <- read.table('dataset/test/X_test.txt')

# Load labels
train_set <- cbind(train_labels, train_s)
test_set <- cbind(test_labels, test_s )

#load names
colnames(train_set)[1] <- "Activity_ID"
colnames(test_set)[1] <- "Activity_ID"

#Merge the training and test set
mergedata<- merge(train_set, test_set,all=TRUE)

#Create and add list of activities
list_activities <- as.character(features$V2)
headers <- c("Activity_ID",list_activities)
names(mergedata) <- headers


#transform to character the second column of the feature list
features$V2 <- as.character(features$V2) 

#Identify which ones are mean or STD
meanSTD <- grepl("mean|std", features$V2)

#extract the data with the mean or STD
dataMeanStd = mergedata[,meanSTD]















