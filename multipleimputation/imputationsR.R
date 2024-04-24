#load library for Multiple Imputations
library(mice)
#packege for Reading Excel files
library(readxl)
#------------------------------
library(dplyr)
library(ggplot2)

#load Dataset
mdata <- read.csv("nes.csv")
View(mdata)

#visualize NAs in the variables
na_counts <- sapply(mdata, function(x) sum(is.na(x)))
print(na_counts)

#print names for the imputation codes
print(colnames(mdata))

#Impute all the dataset
imputed_data <- mice(mdata, method = "cart")

#Impute the necessary variables
imputed_data2 <- mice(mdata[, c("Big_govt_scale", "Education", "Clinton_Sanders")], method = "cart")

View(imputed_data)

completed_data2 <- complete(imputed_data2)

par(mfrow = c(1, 3))  # Set up the plot area to have 3 panels side by side
hist(mdata$Big_govt_scale, main = "Original Data: Big_govt_scale", xlab = "Big_govt_scale")
hist(completed_data2$Big_govt_scale, main = "Imputed Data: Big_govt_scale", xlab = "Big_govt_scale")
hist(completed_data2$Education, main = "Imputed Data: Education", xlab = "Education")
hist(completed_data2$Clinton_Sanders, main = "Imputed Data: Clinton_Sanders", xlab = "Clinton_Sanders")

#view the data is always good
names(mdata)
names(imputed_columns)
View(imputed_columns)

na_counts2 <- sapply(imputed_columns, function(x) sum(is.na(x)))
print(na_counts2)

model <- lm(Big_govt_scale ~ Education + Clinton_Sanders, data = mdata)
summary(model)

model2 <- lm(Big_govt_scale ~ Education + Clinton_Sanders, data = completed_data2)
summary(model2)
