prod<-function(pr){
prod<-read.csv("/Users/badrmansour/Desktop/Badrstudy/datamining/as1/productcluster.csv",header=F,sep=',')
prod
summary(prod)
km = kmeans(prod[,2:3],5,150)
km$centers
km$size
km = kmeans(prod[2:nrow(prod),2:3],5,150)
km$size
summary(prod)
summary(prod[2:2000,])
summary(prod[9:2000,])
summary(prod[10:2000,])
nprod=prod
nprod[,2]=nprod[,2]/mean(nprod[,2])
nprod[,2]=nprod[,3]/mean(nprod[,3])
summary(nprod)
nprod=prod
nprod[,2]=nprod[,2]/mean(nprod[,2])
nprod[,3]=nprod[,3]/mean(nprod[,3])
summary(nprod)
km = kmeans(nprod[,2:3],5,150)
km$center
km$size
source("/Users/badrmansour/Desktop/Badrstudy/datamining/as1/Accessories.r")
withinSSrange(nprod[,2:3], 3, 15, 150)
}