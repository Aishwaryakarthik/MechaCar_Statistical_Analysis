# MechaCar_Statistical_Analysis

Click here to view the R-script: https://github.com/Aishwaryakarthik/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R

# Project Overview

The goal of the project is to analyze metrics that can affect the manufacturing a new car prototype and compare vehicle performance across different manufacturer lots. These metrics include vehicle length, weight, spoiler angle, ground clearance, AWD capabilities, MPG, and PSI.

## Linear Regression to Predict MPG

<img width="785" alt="linear regression for deliverable 1" src="https://user-images.githubusercontent.com/99555513/178706473-e1a8a176-ebec-4146-ad0c-0e1e99c3e321.png">
<img width="670" alt="deliverable 1 screenshot" src="https://user-images.githubusercontent.com/99555513/178706513-3c68e9d4-ea0d-48e2-a8bf-776295325485.png">

### 3 Key Takeaways:

1.Variance of a non-random variable is usually 0. Given this fact, the intercept, vehicle_length, and ground_clearance coeeficients can be said to provide a non-random amount of variance to the mpg values.

2.At a significance level of 0.05, we are able to reject the null hypothesis because of the extremely small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if we reject the null hypthesis, we're stating that alternative (β1 ≠ 0) is true. Thus, proving that the slope is not 0.

3.Multiple R-squared increases as more variables are passed through the regression. However, adjusted R-squared controls against this increase, and adds penalties for the number of predictors in the model, thus making it a more accurate predictor of how effective the linear model is. An adjusted R-square of 0.6825 concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.

## Summary Statistics on Suspension Coils

<img width="402" alt="total_summary_table" src="https://user-images.githubusercontent.com/99555513/178706941-01c95ca3-e081-4cea-8226-341031360a89.png">

<img width="572" alt="lot_summary_table" src="https://user-images.githubusercontent.com/99555513/178706984-037d0ec7-2440-498c-81df-e3f581e6e75f.png">

The overall variance for the entire dataset indicates that the current manufacturing data meets the 100 pounds per square inch variance limitation. However, when separated into three lots, the third lot demonstrates a much higher variance. Because the lots are chosen randomly, there is a possiblity that a third of the lot does not meet the necessary suspension coils requirement.

## T-Test on Suspension Coils

### T-Test on Entire Lot

<img width="634" alt="sample_t_test" src="https://user-images.githubusercontent.com/99555513/178707298-b06e740f-f833-43bd-af34-a4fa32b68c34.png">

At a significance level of 0.05, we fail to reject the null hypothesis since the p-value equals 0.06. Therefore, we cannot reject the fact that the sample mean may be equivalent to the true population mean. Another feature to note is the narrow confidence interval. Although a narrower confidence interval implies that there is a smaller chance of obtaining an observation within that interval, it provides greater accuracy than a wider interval.

### T-Test on Three Smaller Lots

<img width="565" alt="sample_t_test_lot1" src="https://user-images.githubusercontent.com/99555513/178707494-6c202c4e-06f2-47c5-9f97-8892291fa4fd.png">

<img width="514" alt="sample_t_test_lot2" src="https://user-images.githubusercontent.com/99555513/178707537-e3684433-543a-4e17-b01e-a2cbe1f7d682.png">

<img width="465" alt="sample_t_test_lot3" src="https://user-images.githubusercontent.com/99555513/178707578-6faae267-38c8-429e-b3c8-869333086abf.png">

#### Lot 1 

At a significance level of 0.05, we fail to reject the null hypothesis since the p-value equals 1. An interesting correlation between p-value and confidence intervals is that as the p-values get larger, the confidence interval becomes smaller, implying more precision in predicting the true population mean.

#### Lot 2
At a significance level of 0.05, we fail to reject the null hypthesis again since the p-value equals 0.6072. The second lot also has a relatively small confidence interval.

#### Lot 3

At a significance level of 0.05, we can reject the null hypothesis since the p-value equals 0.04168. The mean of this sample is also significantly smaller in comparison to the previous two lots. More importantly, unlike the previous two lots, the confidence interval for the third lot does not include the predicted population mean.

## Study Design: MechaCar vs. Competition

Another statistical study that can be performed to determine MechaCar's standing against its competition is a linear regression on city and highway fuel efficiency. Gasoline is expensive nowadays, and it is an important feature that many consumers look at when purchasing a new car. The metrics that can be included in this analysis are:

1.City and highway fuel efficiency: dependent variable

2.Horse power: independent variable

3.Vehicle weight: independent variable

4.AWD capabilities: independent variable

5.MPG: independent variable In addition to the MPG, AWD, and vehicle weight data that we already have, we would have to collect fuel efficiency and horse power data for the sample data set at hand.
