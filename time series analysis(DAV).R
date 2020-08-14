library(dplyr)
library(tseries)
library(forecast)
library(scales)
library(ggplot2)
library(expsmooth)
data <- global.plastics.production
head(data)
str(data)
summary(df)

df <- select(data, -c(Entity, Code))
str(df)
summary(df)
colnames(df) = c("Year", "Gpp")
#scaling
df$Gpp <- rescale(df$Gpp, to = c(1,100))
head(df)
df$Gpp
#time series
tsdata <- ts(df$Gpp, frequency = 1, start = 1950, end = 2015)
plot(aggregate(tsdata, FUN = mean))
#training and test data
trainingdata <- ts(df$Gpp, frequency = 1, start = 1950, end = 2005)
testdata <- ts(df$Gpp, frequency = 1, start = 2006, end = 2015)


plot(tsdata)
#holts exponential smoothing model
model <- holt(trainingdata, h = 10)
summary(model)
autoplot(model)
testdata <- tail(df, 10)
testdata
pred = c(72.11623, 74.87316, 77.63008, 80.38701, 83.14393, 85.90086, 88.65778, 
         91.41471, 94.17164, 96.92856)
year = c(2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015)

predd = data.frame(year, pred)
predd
accuracy(predd$pred, testdata$Gpp)
#residuals
checkresiduals(model)

#prediction from 2015
fdata <- ts(df$Gpp, frequency = 1, start = 1950, end = 2015)
ft <- holt(fdata, h = 15)
summary(ft)
autoplot(ft)
