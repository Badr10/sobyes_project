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

nkm=kmeans(nprod[,2:3],6,150)
nkm$centers
nkm$size

# Denormalize the centers
realCenters = nkm$centers

# Note that 1 in realCenters matches 2 in nprod
realCenters[,1]=mean(prod[,2])*realCenters[,1]
realCenters[,2]=mean(prod[,3])*realCenters[,2]

realCenters

#column bind the columns
clusteredProd=cbind(prod,nkm$cluster)

#Make sure that the binding is proper
clusteredProd[1:20,]
nkm$cluster[1:20]

#write the clustered products out
write(t(clusteredProd),file="clusteredProducts.csv",sep=',',ncolumns=4)

}