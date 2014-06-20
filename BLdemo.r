rm(list=ls())
arms = read.csv(file='~/Desktop/arms.csv')
##Xplore 
dim(arms) #292 rows (obervations) and 27 columns (variables)
str(arms) #Nice! This shows the internal structure of the 27 variable names, data type (integer, factor with levels, logical), and some other business that I don't quite understand
head(arms) #displays header and first six observations

##Data is longitudinal and it wide format; T1 is first time point, T2 is second time point, etc

#Tyring to run some baseline demographics...
summary(arms)
aovpts<-with(arms,aov(NumPts~factor(Assignment)))
summary(aovpts)
TukeyHSD(aovpts)

aovyrs<-with(arms,aov(YearsPracticed~factor(Assignment)))
summary(aovyrs)
TukeyHSD(aovyrs)