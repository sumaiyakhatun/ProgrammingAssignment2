NEI <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Users\\Sumaiya khatun\\Downloads\\ASSIGNMENT DATA\\Source_Classification_Code.rds")
View(NEI)
View(SCC)

library(ggplot2)
sub_emissions<- subset(NEI,fips="24510")
g<-ggplot(sub_emissions,aes(year,Emissions,color=type))
g+geom_line(stat = "summary",fun.y="sum")+ labs(y="Emissions for Baltimore City ",x="Year (1999 - 2008)")
