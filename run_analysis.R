## Install data.table package first



# Create variables and load labels into R
activity_labels <- read.table('dataset/activity_labels.txt')
features <- read.table('dataset/features.txt')
train_labels <- read.table('dataset/train/y_train.txt')
test_labels <- read.table('dataset/test/y_test.txt')


#Create variables and load data sets
train_set <- read.table('dataset/train/X_train.txt')
test_set <- read.table('dataset/test/X_test.txt')

#Merge the training and test set
mergedata<- merge(train_set, test_set, all=TRUE)


#transform to character the second column of the feature list
features$V2 <- as.character(features$V2) 

#Identify which ones are mean or STD
meanSTD <- grepl("mean|std", features$V2)

#extract the data with the valus














