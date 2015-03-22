## Read file
NEI <- readRDS("summarySCC_PM25.rds")

## Open png device and create file 
png(filename="plot1.png", width = 800, height = 800)

## Calculate total PM2.5 emissions by year
totalyear <- aggregate(Emissions ~ year,NEI, sum)

## Create plot
barplot((totalyear$Emissions)/10^3, xlab = "Year",  ylab = "PM2.5 emission (Kilotons)",
        names.arg=totalyear$year, main="Total PM2.5 emission in US from all sources")

## Close device
dev.off()