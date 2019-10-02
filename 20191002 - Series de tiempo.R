install.packages("ggfortify")
install.packages("tseries")
install.packages("forecast")
library(ggfortify)
library(tseries)
library(forecast)
AP<-AirPassengers
AP
sum(is.na(AP))
frequency(AP)
cycle(AP)
summary(AP)
m<-HoltWinters(AP, beta=F, gamma=F)
plot(AP)
p<-predict(m,5,prediction.interval = T)
plot(m,p)
m1<-HoltWinters(AP)
p1<-predict(m1,5,prediction.interval=T)
plot(m1,p)
p1

