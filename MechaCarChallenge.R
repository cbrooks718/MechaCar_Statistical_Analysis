# Part 1 - Linear Regression

# Read the CSV File
mecha_car <- read.csv(file = 'MechaCar_mpg.csv')
# Import dpylr library
library(dplyr)
# Perform a linear regression
reg = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)
summary(reg)
# Get r-squared value
summary(reg)$r.squared

# Part 2 - Summary Statistics

# Read CSV file
suspension_coil <- read.csv(file='Suspension_Coil.csv')

# Import tidyverse library
library(tidyverse)

# Create a data frame using the summarize() function
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
total_summary

# Create a data frame using groupby() and summarize() function
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
lot_summary

# Part 3 - T-Test