library(extRemes)

annmax <- c(50.5,
       55.5,
       60.76666666666666,
       43.23333333333334,
       43.849999999999994,
       58.79999999999999,
       45.49999999999999,
       35.6,
       38.12499999999999,
       35.775000000000006,
       30.312179461538463,
       35.715740777777775,
       27.825980411764714,
       30.43846153846153,
       27.95512819230769,
       34.2541667,
       28.45541954545454,
       23.435763875000003,
       38.32482455000001)
print(annmax)
hist(annmax,xlab="Annual Maximum Temperature",font=2,main="",font.lab=2)
fit_temperature = fevd(annmax,type="GEV")
plot(fit_temperature)
summary(fit_temperature)