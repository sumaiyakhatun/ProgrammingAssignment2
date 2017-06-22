NEI <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\Source_Classification_Code.rds")
View(NEI)
View(SCC)

library(ggplot2)

NEI_coal<- NEI[which(NEI$SCC %in% SCC[grep("coal",SCC$Short.Name,ignore.case = TRUE),"SCC"]),]
g<-ggplot(NEI_coal,aes(year,Emissions))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions from coal combustion-related sources",x="Year (1999 - 2008)")
