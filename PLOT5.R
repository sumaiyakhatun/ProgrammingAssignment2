NEI <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\Source_Classification_Code.rds")
View(NEI)
View(SCC)

library(ggplot2)

NEI_motorvehicle<- NEI[which(NEI$SCC %in% SCC[grep("motor",SCC$SCC.Level.Three,ignore.case = TRUE),"SCC"] & NEI$fips=="24510"),]
## use "motor vehicle" get 2 rows of data, use "vehicle" get 667 rows of data, use "motor" get 88 rows of data. after exam subseted datas, I decided to use the motor as the paramter.
g<-ggplot(NEI_motorvehicle,aes(year,Emissions))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions from motor vehicle for Baltimore City",x="Year (1999 - 2008)")
