#Testing for loops in ggplot2
library(tidyverse)


for(z in 5:10){
x<-seq(1:z)
y<-seq(1:z)
data<-data.frame(x, y)
print(ggplot(data, aes(x=x, y=y))+geom_point()) #If you just want to take a look at the plots in the plot window.
plot<-ggplot(data, aes(x=x, y=y))+geom_point()
ggsave(paste0("testplot_",z,".pdf")) #ggsave will actually create a .pdf file for each individual plot. 
}

list<-list()
for(i in 1:5){
  for(z in 5:10){
x<-seq(1:z)
y<-seq(1:z)
data<-data.frame(x,y)
list[[i]]<-ggplot(data, aes(x=x, y=y))+geom_point()
} 
}






