# Assignment: 1.2 R Practice
# Name: Gyan Kannur
# DSC 630 Predictive Analytics
# Date: 2025-09-04

## ## Set the working directory to the root of your DSC 630 directory 
setwd("C:/Users/gyanr/gyan-python-workspace/DSC630/assignments")

## Load the Student_Mental_Health.csv data `Student_Mental_Health.csv`
df <- read.csv("./assignment-datasets/Student_Mental_Health.csv")

## Rename the columns of the df.
colnames(df) <- c('timestamp', 'gender', 'age', 'course', 'num_of_years',
                  'cgpa', 'married', 'depressed',
                  'anxiety','panic_attacks', 'seek_treatment')

## Drop the 'timestamp' column since it is not value added.
df1 <- subset(df, select = -c(timestamp))

## Remove the year and Year text from the num_of_years column.
df1$num_of_years <- gsub("Year","",as.character(df1$num_of_years))
df1$num_of_years <- gsub("year","",as.character(df1$num_of_years))

## Change num_of_years column to integer.
df1$num_of_years <- as.numeric(as.character(df1$num_of_years))

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Using `geom_bar()` plot a bar chart of the number of records for each `age`
ggplot(df1, aes(age)) + geom_bar()

## Using `geom_bar()` plot a bar chart of the number of records for each `gender`
ggplot(df1, aes(gender)) + geom_bar()

## Using `geom_bar()` plot a bar chart of the number of records for each `depressed`
ggplot(df1, aes(depressed)) + geom_bar()

## Using `geom_bar()` plot a bar chart of the number of records for each `anxious`
ggplot(df1, aes(anxiety)) + geom_bar()

## Using `geom_bar()` plot a bar chart of the number of records for each `panic_attacks`
ggplot(df1, aes(panic_attacks)) + geom_bar()

## Using `geom_bar()` plot a bar chart of the number of records for each `gender`
ggplot(df1, aes(seek_treatment)) + geom_bar()

## Create boxplots of gender vs. age using `geom_point()` and `geom_boxplot()`
ggplot(df1, aes(x=gender, y=age)) + geom_point() + geom_boxplot()
ggplot(df1, aes(x=depressed, y=age)) + geom_point() + geom_boxplot()


