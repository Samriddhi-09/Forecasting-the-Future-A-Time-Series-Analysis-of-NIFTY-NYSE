library(readxl)
library(tseries)
library(forecast)
library(astsa)
library(stats)
library(dplyr)
library(FinTS)
data=read_excel("C:\\Users\\samri\\OneDrive\\Documents\\Desktop\\PPT\\Original data.xlsx")
View(data)

data1=data.frame(data$Year, data$Month, data$NYSE)
colnames(data1)[1]="Year"
colnames(data1)[2]="Month"
colnames(data1)[3]="NYSE"
data1
data2=select(data1, NYSE)
data2
data2$NYSE=as.numeric(data2$NYSE)
start_date=as.Date("2015-04-01")
end_date=as.Date("2022-04-01")
nyse=ts(data2$NYSE, start=start_date, end=end_date, frequency=12)
stat=diff(nyse, 1)
adf.test(nyse)
acf(nyse)
pacf(nyse)
ar_model=auto.arima(nyse, seasonal=TRUE, stepwise=FALSE)
summary(ar_model)
f=forecast(ar_model,h=20)
f
Box.test(r1, lag=1, type="Ljung-Box", fitdf=0)
plot(decompose(nyse))
r1=ar_model$residuals
plot(r1, type="o")
r1.2=r1^2
ArchTest(r1.2, lags=1)
a1=garch(r1.2, order=c(1,31))
summary(a1)

data3=data.frame(data$Year, data$Month, data$NIFTY)
data3
colnames(data3)[1]="Year"
colnames(data3)[2]="Month"
colnames(data3)[3]="NIFTY"
data3
data4=select(data3, NIFTY)
data4
data4$NIFTY=as.numeric(data4$NIFTY)
nifty=ts(data4$NIFTY, start=start_date, end=end_date, frequency=12)
stat=diff(nifty, 1)
adf.test(nifty)
acf(nifty)
pacf(nifty)
ar_model2=auto.arima(nifty, seasonal=TRUE, stepwise=FALSE)
summary(ar_model2)
f2=forecast(ar_model,h=20)
f2
plot(decompose(nifty))
r2=ar_model2$residuals
Box.test(r2, lag=1, type="Ljung-Box", fitdf=0)
r2=ar_model2$residuals
plot(r2, type="o")
r2.2=r2^2
ArchTest(r2.2, lags=1)
a2=garch(r2.2, order=c(20,1))
summary(a2)





