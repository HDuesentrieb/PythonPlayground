data1 <- readRDS("Source_Classification_Code.rds")
data2 <- readRDS("summarySCC_PM25.rds")
data4 <- aggregate(data2$Emission ~ data2$year, FUN=sum)
names(data4) <- c("year", "emission")
plot(data4$year, data4$emission, type='l', xlab="Year", ylab="Total PM2.5 emission", main="Total PM2.5 emission in United States")
