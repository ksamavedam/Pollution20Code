library(extRemes)
annmax = read.table("annmax.txt",header=F)

annmax <- c(2.6760415,
            2.4959689999999997,
            2.196875,
            1.722917,
            1.73229175,
            2.06818175,
            1.62500025,
            1.79809775,
            2.44895825,
            2.1010730000000004,
            1.4576596666666666,
            1.3818264999999998,
            1.04999975,
            0.9385206666666667,
            1.39031525,
            1.3837624999999998,
            0.9851855,
            0.94536,
            1.0794385)
print(annmax)
hist(annmax,xlab="Annual Maximum Temperature",font=2,main="",font.lab=2)
fit_temperature = fevd(annmax,type="GEV")
plot(fit_temperature)
summary(fit_temperature)
