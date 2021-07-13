#Data club tutorial 

install.packages('dplyr')
library(dplyr)

data = read.csv("~/Downloads/data.csv")
data_skip_rows = read.csv("~/Downloads/data.csv", sep = ",", skip = 100)
data_no_head = read.csv("~/Downloads/data.csv", sep = ",", header=FALSE)
# this one won't work and I'm not sure why
data_mod_index = read.csv("~/Downloads/data.csv", sep = ",", row.names = "radius_mean")

colnames(data)
head(data, n=10)
tail(data, n=10)
dim(data)
data$area_mean
data[100,]
# drop col method I like
data$compactness_mean <- NULL
colnames(data)
# drop row
data = data[-c(5),]
data = data[-c(5:10),]

data = data[,colSums(is.na(data)) == 0]

# July 13
# Import data
data = read.csv("~/Downloads/breast_cancer_subset.csv")
head(data)
subset_data = data

# Compute summary stats
summary(subset_data)

# Correlation values 
cor(subset_data[,3:7])

# Check mean of a given column
mean(subset_data$radius)

# Check SD of a given column
sd(subset_data$radius)

# Check min and max of a given column
min(subset_data$radius)
max(subset_data$radius)

# Mean of every (numeric) column
sapply(subset_data[,3:7], mean)
# also
colMeans(subset_data[,3:7])

# Count number of elements in a specific column
length(subset_data$radius)

# Calculate sum of the values in a given column
sum(subset_data$radius)
