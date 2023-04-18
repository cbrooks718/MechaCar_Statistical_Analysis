# Read the CSV File
mecha_car <- read.csv(file = 'MechaCar_mpg.csv')
# Import dpylr library
library(dplyr)
# Perform a linear regression
reg = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)
summary(reg)
# Get r-squared value
summary(reg)$r.squared
