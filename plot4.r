mergedData<-merge(NEI, SCC, by='SCC')
mergedData$Short.Name<-tolower(mergedData$Short.Name)
total<-with(mergedData[grep('coal', mergedData$Short.Name),],
            tapply(Emissions, year, sum))
png('plot4.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='United States Coal Sources')
dev.off()