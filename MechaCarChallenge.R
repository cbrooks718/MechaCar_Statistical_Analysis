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

# Part 3 - T-Tests

# Generate a random sample of 50 data points
sample_table <- suspension_coil %>% sample_n(50)

# Compare sample versus population mean
t.test(sample_table$PSI,mu=mean(suspension_coil$PSI))

# Create three more t-tests for each manufacturing lot
lot1_sample <- suspension_coil %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25)
t.test(lot1_sample$PSI,mu=mean(suspension_coil$PSI))

lot2_sample <- suspension_coil %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25)
t.test(lot2_sample$PSI,mu=mean(suspension_coil$PSI))

lot3_sample <- suspension_coil %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25)
t.test(lot3_sample$PSI,mu=mean(suspension_coil$PSI))