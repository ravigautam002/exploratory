total<-with(NEI[NEI$fips=='24510',], tapply(Emissions, year, sum))
png('plot2.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='Baltimore')
dev.off()