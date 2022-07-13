library(dplyr)
library(dplyr)
> ### DELIVERABLE 1 ###
  > # Import the data
  > mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
  > # Perform linear regression that predicts the mpg of MechaCar prototypes
    > lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
  
  Call:
    lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
         ground_clearance + AWD, data = mecha_car_mpg)
  
  Coefficients:
    (Intercept)    vehicle_length  
  -1.040e+02         6.267e+00  
  vehicle_weight     spoiler_angle  
  1.245e-03         6.877e-02  
  ground_clearance               AWD  
  3.546e+00        -3.411e+00  
  
  > View(mecha_car_mpg)
  > summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
  
  Call:
    lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
         ground_clearance + AWD, data = mecha_car_mpg)
  
  Residuals:
    Min       1Q   Median       3Q      Max 
  -19.4701  -4.4994  -0.0692   5.4433  18.5849 
  
  Coefficients:
    Estimate Std. Error t value
  (Intercept)      -1.040e+02  1.585e+01  -6.559
  vehicle_length    6.267e+00  6.553e-01   9.563
  vehicle_weight    1.245e-03  6.890e-04   1.807
  spoiler_angle     6.877e-02  6.653e-02   1.034
  ground_clearance  3.546e+00  5.412e-01   6.551
  AWD              -3.411e+00  2.535e+00  -1.346
  Pr(>|t|)    
  (Intercept)      5.08e-08 ***
    vehicle_length   2.60e-12 ***
    vehicle_weight     0.0776 .  
  spoiler_angle      0.3069    
  ground_clearance 5.21e-08 ***
    AWD                0.1852    
  ---
    Signif. codes:  
    0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  
  Residual standard error: 8.774 on 44 degrees of freedom
  Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
  F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
  
  > ### DELIVERABLE 2 ###
    > 
    > # Import the data
    > 
    > sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
  > View(sus_coil)
  > 
    > # Create a summary data frame #
    > 
    > total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
  > View(total_summary)
  > 
    > # Create a summary data frame grouped by Manufacturing Lot #
    > 
    > lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))
  > View(lot_summary)
  > 
    > ### DELIVERABLE 3 ###
    > 
    > # Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
    > t.test(sus_coil$PSI, mu = 1500)
  
  One Sample t-test
  
  data:  sus_coil$PSI
  t = -1.8931, df = 149, p-value = 0.06028
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1497.507 1500.053
  sample estimates:
    mean of x 
  1498.78 
  
  > View(sus_coil)
  > # Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
    > 
    > Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
  > View(Lot1)
  > Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
  > View(Lot2)
  > Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')
  > 
    > View(Lot3)
  > 
    > t.test(Lot1$PSI, mu = 1500) 
  
  One Sample t-test
  
  data:  Lot1$PSI
  t = 0, df = 49, p-value = 1
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1499.719 1500.281
  sample estimates:
    mean of x 
  1500 
  
  > t.test(Lot2$PSI, mu = 1500)
  
  One Sample t-test
  
  data:  Lot2$PSI
  t = 0.51745, df = 49, p-value = 0.6072
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1499.423 1500.977
  sample estimates:
    mean of x 
  1500.2 
  
  > t.test(Lot1$PSI, mu = 1500) 
  
  One Sample t-test
  
  data:  Lot1$PSI
  t = 0, df = 49, p-value = 1
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1499.719 1500.281
  sample estimates:
    mean of x 
  1500 
  
  > # p-value = 1
    > t.test(Lot2$PSI, mu = 1500)
  
  One Sample t-test
  
  data:  Lot2$PSI
  t = 0.51745, df = 49, p-value = 0.6072
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1499.423 1500.977
  sample estimates:
    mean of x 
  1500.2 
  
  > # p-value = 0.6072
    > t.test(Lot3$PSI, mu = 1500)
  
  One Sample t-test
  
  data:  Lot3$PSI
  t = -2.0916, df = 49, p-value = 0.04168
  alternative hypothesis: true mean is not equal to 1500
  95 percent confidence interval:
    1492.431 1499.849
  sample estimates:
    mean of x 
  1496.14 
  
  > # p-value = 0.04168
    