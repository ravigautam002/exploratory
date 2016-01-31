total<-with(mergedData[grepl('vehicle', mergedData$Short.Name) & mergedData$fips=='24510',],
            tapply(Emissions, year, sum))
png('plot5.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='Baltimore Motor Vehicles')
dev.off()