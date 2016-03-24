setwd ("C:\Users\Anna\Desktop\mathmod-master\eddypro")
getwd()
eddypro=read.csv("eddypro.csv",skip = 1) 
eddypro=eddypro[-1, ] 
length(eddypro) 
for (i in 1:length(eddypro)){ 
  eddypro[ ,i]=as.vector(eddypro[ ,i]) 
} 
eddypro=eddypro[ ,1:77] 
eddypro=eddypro[ ,c(-5,-33,-38,-63,-70)] 
for(i in 5:length(eddypro)){ 
  eddypro[ ,i]=as.numeric(eddypro[ ,i]) 
} 
#as.numeric 
eddypro[eddypro==-9999.0]=NA 
eddypro_naex=na.exclude(eddypro)