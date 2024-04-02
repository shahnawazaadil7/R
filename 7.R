library(rio)  #for data reading
data <- import("binary.sas7bdat")
str(data)
data$ADMIT <- as.factor(data$ADMIT)
data$RANK <- as.factor(data$RANK)
str(data)
summary(data)
plot(data$GPA,data$GRE,col="red")
cor(data$GRE,data$GPA)

library(ggplot2) #For plotting
ggplot(data,aes(ADMIT,GRE,fill=ADMIT))+
  geom_boxplot()+
  theme_bw()+
  xlab("Admit")+
  ylab("GRE")+
  ggtitle("ADMIT BY GRE")
ggplot(data,aes(ADMIT,GPA,fill=ADMIT))+
  geom_boxplot()+
  theme_bw()+
  xlab("Admit")+
  ylab("GPA")+
  ggtitle("ADMIT BY GPA")
ggplot(data,aes(RANK,ADMIT,fill=ADMIT))+
  geom_col()+
  xlab("RANK")+
  ylab("COUNT-ADMIT")+
  ggtitle("ADMIT BY RANK")