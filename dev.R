customer<-function(data)
{
	data<-read.csv("/Users/badrmansour/Desktop/Badrstudy/R/as1/month_sales.csv", header = F , sep=',')
	c=ncol(data)
	r=nrow(data)
	print(r)
	
d=array(0,dim=c(r))
	v=array(0,dim=c(r))

	for(i in 2:r) {
		
		d[i]<-((sum(data[i,2:c])) / (c-1)) - (sd(data[i,2:c]))
		v[i]<-((sum(data[i,2:c])) / (c-1)) + (sd(data[i,2:c]))

	}
	
write(t(cbind(data,d,v)), file=paste0("hzfinal.csv"), ncolumns=11, sep=',')
}