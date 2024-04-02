#installed.packages(ggplot2)
#library(ggplot2)
data<-mtcars[,c('mpg','cyl')]
#boxplot(mpg~cyl,data,main="Mileage Data",xlab="mpg",ylab="Cyl")
plot(mpg~cyl,data,main="Mileage",xlab="mpg",ylab = "cyl")
v <- c(9,13,21,8,36)
m<-c("jan","feb","mar","april","May")
#barplot(v,names.arg = m,xlab = "months",ylab = "v",main="revenue")
#pie(v,m)