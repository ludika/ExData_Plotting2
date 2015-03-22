## Read files
NEI <- readRDS("summarySCC_PM25.rds")

## Open png device and create file 
png(filename="plot2.png", width = 800, height = 800)

## Get Baltimora data and calculate total PM2.5 emissions by year

Baltimore <- NEI[NEI$fips == "24510", ]
Baltyear <- aggregate(Emissions ~ year,Baltimore, sum)

## Create plot
barplot(Baltyear$Emissions,
        xlab = "Year",  ylab = "PM2.5 emission (tons)",
        names.arg=Baltyear$year, 
        main="Total PM2.5 emission in Baltimore City from all sources"
        )

## Close device
dev.off()