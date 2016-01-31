NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

total<-with(NEI[NEI$fips=='24510',], tapply(Emissions, year, sum))
png('plot2.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='Baltimore')
dev.off()