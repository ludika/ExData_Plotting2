## Read files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Open png device and create file 
png(filename="plot5.png", width = 800, height = 800)

## Get subset of data about motor vehicles sources in Baltimore City
Baltimore <- NEI[NEI$fips == "24510", ]

SCCvehicle <- grepl("Vehicles", SCC$SCC.Level.Two, ignore.case=TRUE)

subSCC2 <- SCC[SCCvehicle,]$SCC
subBalt <- Baltimore[Baltimore$SCC %in% subSCC2,]

## Create and print plot
plotBalt <- ggplot(subBalt, aes(factor(year), Emissions)) +
  geom_bar(stat="identity", fill="grey") +
  theme_bw() +
  xlab("Year") +
  ylab(expression("PM"[2.5]*" emission (tons)")) +
  ggtitle(expression("PM"[2.5]*" emission in Baltimore City by motor vehicle sources"))

print(plotBalt)

## Close device
dev.off()