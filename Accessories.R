withinSSrange <- function(data,low,high,maxIter)
{
   withinss = array(0, dim=c(high-low+1));
   for(i in low:high)
   {
      withinss[i-low+1] <- kmeans(data, i, maxIter)$tot.withinss
   }
   withinss
}