# MechaCar_Statistical_Analysis

## Overview

The purpose of this analysis is to aid AutosRU's production troubles by providing production data insights. The data analytics that were performed are the following:
- A multiple linear regression to identify what variables predict the mpg of MechaCar prototypes
- Summary statistics on the pounds per square inch (PSI) of suspension coils from manufacturing lots
- T-tests to determine if manufacturing lots are statistically different from the mean population
- A statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Results

## Multiple Linear Regression Model to Predict MPG

The following image shows a multiple linear regression and the effects of the following variables on mpg:
- Vehicle length
- Vehicle weight
- Spoiler angle
- Drivetrain
- Ground clearance

![MLR](Images/MLR.png)

From this output we can make the following three conclusions:
1. Given a significance level of 5%(p=0.05), vehicle length and ground clearance provide a non-random amount of variance to mpg values. In other words, these two variables have a statistically significant influence on mpg of the MechaCar prototypes. The other variables, in turn, do not have a significant effect on mpg. 
2. Keeping the same level of significance, the p-value of 5.35e-11 would indicate that there is evidence to reject the null hypothesis. Therefore, the slope of the linear model is not zero.
3. The model has an r-squared value of 0.7149. This means that 71% of all predictions will be determined by the model. 

## Summary Statistics on Suspension Coils

![TotalSummary](Images/Total_Summary.png)
- Summary statistics of PSI for all manufacturing lots
![LotSummary](Images/Lot_Summary.png)
- Summary statistics of PSI for each manufacturing lot

For the design specifications for the MechaCar suspension coils, the variance cannot exceed 100 PSI. Without looking at each lot individually, the variance from the total summary data frame is about 62.3 PSI. However, when we look at the second data frame, lot 3 exceeds the limit with a variance of about 170.3 PSI. 

## T-Tests on Suspension Coils

![T-Test](Images/T_Test_Total.png)

Given a significance level of 0.05 percent(p-value=0.05), the p-value for this one-sample t-test for all manufacturing lots produces is 0.8849. Therefore, since the value is greater than the significance level, there is insufficient evidence to reject the null hypothesis. In other words, the mean PSI across all lots is statistically equal to the true mean of 1498.78.

### T-Tests for each manufacturing lot

Each test uses the same significance level of 0.05 percent(p-value=0.05)

- Lot 1
![Lot1](Images/T_Test_Lot1.png)

For Lot 1, the p-value is significantly smaller than our significance value, therefore, we can reject the null hypothesis. In other words, the mean PSI of Lot 1 is statistically different from the true mean.

- Lot 2
![Lot2](Images/T_Test_Lot2.png)

- Lot 3
![Lot3](Images/T_Test_Lot3.png)

For Lots 2 & 3, the p-values are both higher than the significance level, therefore, we fail to reject the null hypothesis. In other words, the mean PSI of Lots 2 & 3 are statistically equal to the true mean.