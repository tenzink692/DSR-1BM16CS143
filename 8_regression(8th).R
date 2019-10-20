path="/Users/tenzinkunsang/Documents/tenkun"
setwd(path)
count<-c(9,25,15,2,14,25,24,47)
speed<-c(2,3,5,9,14,24,29,34)
fw<-data.frame(count,speed)
fw
names<-c("Taw","Torridge","Ouse","Exe","Lyn","Brook","Ditch","Fal")
rownames(fw)=names
fw
fw.lm=lm(count ~ speed,data=fw)
summary(fw.lm)
names(fw.lm)                                    #components of linear regression
fw.lm$coefficients 

#Gives slope and Intercept
newypred<-fitted(fw.lm)                   #predict y values  for each x value
newypred
#Obtaining confidence Intervals
confint(fw.lm)  #obtain the confidence intervals
confint(fw.lm,parm=c('(Intercept)','speed'),level =0.9)
#Fitted Values
fitted(fw.lm)
residuals(fw.lm)
#plotting the x , y values 
plot(fw$speed,fw$count,col="red")
coef(fw.lm)
#plotting the fitted line 
abline(coef(fw.lm),lty=1,col="blue")
#plotting residuals
plot(fw.lm,which=1)  
