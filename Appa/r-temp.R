library(extRemes)


setwd("C:/Users/ksama_3n8exwu/Documents/Python Scripts/Pollution20Code/Appa")
print (getwd())

# fatigue data
fatigue = read.table("cycles_fatigue.txt",header=F)

# temperature data 
temperature_data = read.csv("cp_temperature.csv",header=T)
# Annual Maximum Ave Temperature #
yr1 = 1951
yr2 = 2017
n = yr2 - yr1 + 1

annmax = matrix(NA,nrow=n,ncol=1)
for (i in 1:n)
{
  yr = 1950 + i
  index = which((temperature_data[,1] == yr))
  temperature_yr = temperature_data[index,4]
  annmax[i,1] = max(temperature_yr,na.rm=T)
}

hist(annmax,xlab="Annual Maximum Temperature",font=2,main="",font.lab=2)
fit_temperature = fevd(annmax,type="GEV")
plot(fit_temperature)
summary(fit_temperature)
