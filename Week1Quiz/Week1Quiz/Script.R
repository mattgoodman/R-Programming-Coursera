raw <- read.csv("hw1_data.csv")

## What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
filtered <- complete.cases(raw)
base <- raw[filtered,]
om <- mean(base[[1]])
om

##  Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset ?

oz31 <- base[base[1] > 31,]
temp90 <- oz31[oz31[4] > 90,]
mean(temp90[[2]])

## What is the mean of "Temp" when "Month" is equal to 6?

month6 <- raw[raw[5] == 6,]
mean(month6[[4]])

## What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

month5 <- base[base[5] == 5,]
max(month5[[1]])