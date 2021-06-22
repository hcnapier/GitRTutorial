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
