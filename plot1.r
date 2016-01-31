total<-with(NEI, tapply(Emissions, year, sum))
png('plot1.png')
plot(names(total), total, ylab='Emissions', xlab='year', main='United States')
dev.off()