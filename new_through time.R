
par(mfrow=c(1,1))
par(mfrow=c(2,2), mai = c(0.8, 0.5, 0.1, 0.5))

d <- read.csv("C:/Users/Yuxi.YUXI-PC/Desktop/manuscript/cogon_coverage_invasive.csv",header = T)
d$factor<-factor(d$period, levels=c("Jun-15", "Feb-16", "Jun-16"))
boxplot(d$Cogon.cover ~ d$factor,xaxt = "n")
axis(1,at=c(1,2,3),labels=c("Jun 15", "Feb 16", "Jun 16"))
mtext("(a) cogongrass coverage", side=1, line=2.5)

d1 <- read.csv("C:/Users/Yuxi.YUXI-PC/Desktop/manuscript/dead_plant_coverage.csv",header = T)
d1$period
d1$factor<-factor(d1$period, levels=c("Jun-15", "Feb-16", "Jun-16"))
boxplot(d1$dead.plant.cover ~ d1$treatment*d1$factor, data=d1,
        col=(c("grey","white")),xaxt = "n")
axis(1,at=c(1.5,3.5,5.5),labels=c("Jun 15", "Feb 16", "Jun 16"))
legend(x=1.6,y=0.9,legend=c("invaded", "native"), fill=c("grey","white"))
mtext("(b) dead plant coverage", side=1, line=2.5)

d2 <- read.csv("C:/Users/Yuxi.YUXI-PC/Desktop/manuscript/EWT_LDratio.csv",header = T)
d2$period
d2$factor <- factor(d2$period, levels=c("Feb-16", "Jun-16"))
boxplot(d2$L.D.ratio ~ d2$treatment*d2$factor, data=d2, ylim=c(0,5),
        col=(c("grey","white")),xaxt = "n")
axis(1,at=c(1.5,3.5),labels=c("Feb 16", "Jun 16"))
mtext("(c) live to dead ratio", side=1, line=2.5)

boxplot(d2$EWT ~ d2$treatment*d2$factor, data=d2,
        col=(c("grey","white")),xaxt = "n")
axis(1,at=c(1.5,3.5),labels=c("Feb 16", "Jun 16"))
mtext("(d) canopy EWT", side=1, line=2.5)




par(mfrow=c(1,1), mai = c(2, 0.5, 0.5, 0.5))
d <- read.csv("C:/Users/Yuxi/Desktop/manuscript/coverage.csv",header = T)
head(d)[1:6]
d$period
d$factor<-factor(d$period, levels=c("Jun-15", "Feb-16", "Jun-16"))
boxplot(d$dead.plant.cover ~ d$treatment + d$factor, las=2)
axis(side=1, line=0.5, lwd=0)
title('Comparing dead plant coverage changes in native and invasive plots')

library(ggplot2);library(reshape2)
source("sjPlotPropTable.R")
sjp.xtab(y, grp,
         axisLabels.x=c("low", "mid", "high"),
         legendLabels=c("Grp 1", "Grp 2", "Grp 3", "Grp 4"))