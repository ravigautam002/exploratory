NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

mergedData<-merge(NEI, SCC, by='SCC')
mergedData$Short.Name<-tolower(mergedData$Short.Name)

total<-with(mergedData[grepl('vehicle', mergedData$Short.Name) & mergedData$fips=='24510',],
            tapply(Emissions, year, sum))
png('plot5.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='Baltimore Motor Vehicles')
dev.off()