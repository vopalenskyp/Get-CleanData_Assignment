#The R script should be put to the folder "UCI HAR dataset" obtained by 
# unzipping the original zip file.

# The commented command below is only there to set the working directory accordingly.
# In general, the working directory should be put as the UCI HAR Dataset folder
# appearing after unzipping the exam data zip file.
setwd("C:/Pavel/DataScience/Getting_Cleaning_Data/Final_exam/UCI HAR Dataset")

# Getting the training and test datasets
train_data_x <- read.table("train/X_train.txt", header = FALSE)
test_data_x <- read.table("test/X_test.txt", header = FALSE)

#Merging the testing and training dataset into one table "all_data_x".
all_data_x <- rbind(train_data_x, test_data_x)

#Loading features table, ie. column labels
features <- read.table("features.txt", header = FALSE, 
                       col.names = c("Col_no", "Name"))

#Getting only the columns containing means
means <- all_data_x[,features[grep("*mean*", features$Name),][,1]]

#Extracting the names of mean columns from the feature dataframe. Reads the 
#two-column dataframe features, greps the rows containing "Means" and returns
# only the second column containing the name of the feature. This vector is 
# then used as column names in the dataframe means.
colnames(means) <- c(features[grep("*mean*", features$Name),][,2])

#The same is done for the columns in the data containing standard deviations
stds <- all_data_x[,features[grep("*std*", features$Name),][,1]]
colnames(stds) <- c(features[grep("*std*", features$Name),][,2])

# Merging the means and the standard deviation columns into one large dataframe
data2 <- cbind(means,stds)

#Getting the activity code for both training and testing dataset. 
#Both have the same number of lines as the original data_x files.
act_train <- read.table("train/y_train.txt", header = FALSE)
act_test <- read.table("test/y_test.txt", header = FALSE)

# Appending the activity code columns to the data. The training and testing
# activity codes are first rbind-ed in the same order as the datasets were
# rbind-ed to the all_data_x dataframe. Then the resulting column is cbind-ed
# to the left of the data2 dataframe. The activity code column is renamed.
data2 <- cbind(rbind(act_train, act_test), data2)
colnames(data2)[1] <- "ActCode"

# Appending the subject ID as a new columns. Coded in a similar way as 
# appending the activity codes (above).
sub_train <- read.table("train/subject_train.txt", header = FALSE)
sub_test <- read.table("test/subject_test.txt", header = FALSE)
data2 <- cbind(rbind(sub_train, sub_test), data2)
colnames(data2)[1] <- "SubjectCode"

# Reading the description of activities as dataframe, renaming cols to allow #for merging in the next steps.
act_lab <- read.table("activity_labels.txt", header = FALSE,  
                      col.names = c("ActCode", "Activity"))

library(dplyr)

#Merging the activity names to the activity codes using left_join function.
#The left_join is done in such order that the original data2 row order is kept.
final_data <- data2 %>%
  left_join(act_lab, by = "ActCode", keep = FALSE) %>% #adding activity names
  relocate(Activity) %>%  #relocating the last column with activity name to col1
  select(-ActCode)  #Removing numeric activity code (second column)

#Save the final table (Task 4) as .csv
write.csv(final_data, "Step4_final_data.csv", row.names = FALSE)

#The tidy smaller dataset containing the means grouped by activity and subject
smaller_data <- final_data %>%
  group_by(Activity, SubjectCode) %>%
  summarise(across(c(1:last_col()), mean))

#Save the smaller dataset (Task 5) as .csv
write.csv(smaller_data, "Step5_smaller_data.csv", row.names = FALSE)
