path="/Users/tenzinkunsang/Documents/tenkun"
setwd(path)
dataval=read.csv("iris.csv")
dataval
#sepal.length
#sepal.width

plot(dataval$sepal.length,dataval$sepal.width)
