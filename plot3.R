NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
total<-with( NEI[NEI$fips=='24510',], aggregate(Emissions, list(type, year), sum))
colnames(total)<-c('type', 'year', 'emissions')
png('plot3.png')
with(total, qplot(year, emissions, color=type), , main='Baltimore')
dev.off()