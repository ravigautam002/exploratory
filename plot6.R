NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

mergedData<-merge(NEI, SCC, by='SCC')
mergedData$Short.Name<-tolower(mergedData$Short.Name)

total<-with(mergedData[grepl('vehicle', mergedData$Short.Name) & mergedData$fips=='24510',],
            tapply(Emissions, year, sum))

total1<-with(mergedData[grepl('vehicle', mergedData$Short.Name) & mergedData$fips=='06037', ],
             tapply(Emissions, year, sum))
png('plot6.png')
par(mfrow=c(1,2))
rng<-range(c(total, total1))
plot(names(total), total, ylab='Emissions', xlab='year', main='Baltimore Motor Vehicles', ylim=rng)
plot(names(total1), total1, ylab='Emissions', xlab='year', main='Los Angles Motor Vehicles', ylim=rng)
dev.off()