NEI <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\Source_Classification_Code.rds")
View(NEI)
View(SCC)

totalemission=matrix(nrow=4,ncol=2)
totalemission[,1]=levels(as.factor(NEI$year))
for (i in seq_along(levels(as.factor(NEI$year)))){
  totalemission[i,2]=sum(NEI[which(NEI$year==levels(as.factor(NEI$year))[i]),4])
}
totalemission<- data.frame(totalemission,stringsAsFactors = F)
names(totalemission)<- c("year","emission")
totalemission$emission<- as.numeric(totalemission$emission)
with(totalemission,plot(year,emission,type="l"))


