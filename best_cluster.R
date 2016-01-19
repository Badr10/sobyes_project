best_clustre<-function(nprod){
nprod<-read.csv("/Users/badrmansour/Desktop/Badrstudy/datamining/as1/productcluster.csv",header=F,sep=',')
	nkm=kmeans(nprod[,2:3],6,150)
nkm$centers
nkm$size

# Denormalize the centers
realCenters = nkm$centers

# Note that 1 in realCenters matches 2 in nprod
realCenters[,1]=mean(prod[,2])*realCenters[,1]
realCenters[,2]=mean(prod[,3])*realCenters[,2]



#column bind the columns
clusteredProd=cbind(prod,nkm$cluster)

#Make sure that the binding is proper
clusteredProd[1:20,]
nkm$cluster[1:20,]

#write the clustered products out
write(t(clusteredProd),file="clusteredProducts.csv",sep=',',ncolumns=4)
}