path="/Users/tenzinkunsang/Documents/tenkun"
setwd(path)
library(cluster)
library(ggplot2)
#library(plyr)

#library(lattice)
#library(graphics)
x<-c(185,170,168,179,182,188)
y<-c(72,56,60,68,72,77)


#below code is for iris dataset read from iris.csv
k <- read.csv("iris.csv")
k
k1 <- k[,1:2]
k1


clsample<-data.frame(x,y)
clsample
dim(clsample)
clsample1<-data.matrix(clsample)
clsample1
cldata<-clsample1[,1:2]
cldata
#Elbow Curve
wss<-vector(mode="numeric",length=6)
wss
#wss<-(nrow(clsample1)-1)*sum(apply(clsample1,2,var))
#wss
#for(i in 1:6) {
# wss[i]=sum(kmeans(cldata,centers=i,nstart=25)$withinss)
#}

km=kmeans(cldata,2,nstart=10)
km
km$cluster
km$centers
km$withinss
km$betweenss
km$totss

km1=kmeans(k1,2)
km1
#Visualizing clusters

plot(cldata[km$cluster ==1,],col="red",xlim=c(min(cldata[,1]),max(cldata[,1])),ylim=c(min(cldata[,2]),max(cldata[,2])))
points(cldata[km$cluster == 2,],col="blue")

#below code is for iris data read from iris.csv file
plot(k1[km1$cluster ==1,],col="red",xlim=c(min(k1[,1]),max(k1[,1])),ylim=c(min(k1[,2]),max(k1[,2])))
points(k1[km1$cluster == 2,],col="blue")
plot.new()

#plot(k1$sepal.width~k1$sepal.length,col=km1$cluster)
