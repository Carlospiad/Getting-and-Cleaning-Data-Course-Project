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

all_set <- merge(train_set,test_set)















