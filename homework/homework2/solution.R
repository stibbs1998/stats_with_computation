# Spencer Tibbitts
# Created: 09/19/19
# Updated: 09/19/19

# Import DataFrame
# source("http://www.openintro.org/stat/data/cdc.R")

# View Names of Data
names(cdc)

#####
# 1.) How many cases are there in this data set? 
# How many variables? 9
# For each variable, identify its data type (e.g. categorical, discrete).

# genhlth -> categorical (ordinal)
# exernany -> categorical (T/F)
# hlthplan -> categorical (T/F)
# smoke100 -> categorical (T/F)
# height -> numerical (discrete)
# weight -> numerical (discrete)
# wtdesire -> numerical (discrete)
# age -> numerical (discrete)
# gender -> categorical (nominal)

# View some of the dataset
head(cdc)
tail(cdc)

# Return Numerical Summary
summary(cdc$weight)

# Find the IQR
190-140

# Use built in statistical functions
mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)

# Return table with summary statistics for categorical data
smoke <- table(cdc$smoke100)
table(cdc$smoke100)/20000 # relative frequency

# Create a barplot for the first table
barplot(smoke)

####
# 2. Create a numerical summary for height and age, 
# and compute the interquartile range for each. Compute
# the relative frequency distribution for gender and exerany. 
# How many males are in the sample? What
# proportion of the sample reports being in excellent health?

# Get the summary for height, and then calculate the IQR
height_sum <- summary(cdc$height)
height_IQR <- height_sum[4]-height_sum[2]

# Do the same for age
age_sum <- summary(cdc$age)
age_IQR <- age_sum[4] - age_sum[2]

# Relative Frequency Distribution of Gender
gender <- table(cdc$gender)
gender[2] # Number of Males

# Relative Frequency Distribution of Exerany
exerany <- table(cdc$exerany)
exerany[2]/20000 # Percentage in Good Health
