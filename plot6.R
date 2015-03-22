## Read files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Open png device and create file 
png(filename="plot6.png", width = 800, height = 800)

## Get subset of data about motor vehicles sources in Baltimore City and Los Angeles
Baltimore <- NEI[NEI$fips == "24510", ]
LosAngeles <- NEI[NEI$fips == "06037", ]

SCCvehicle <- grepl("Vehicles", SCC$SCC.Level.Two, ignore.case=TRUE)
subSCC2 <- SCC[SCCvehicle,]$SCC

subBalt <- Baltimore[Baltimore$SCC %in% subSCC2,]
subBalt$city <- "Baltimore City"
subLos <- LosAngeles[LosAngeles$SCC %in% subSCC2,]
subLos$city <- "Los Angeles"

data <- rbind(subBalt, subLos)

## Create and print plot
plot <- ggplot(data, aes(factor(year), Emissions, fill = city)) +
  geom_bar(stat="identity") +
  theme_bw() +
  facet_grid(.~city) +
  guides(fill=FALSE) +
  xlab("Year") +
  ylab(expression("PM"[2.5]*" emission (tons)")) +
  ggtitle(expression("PM"[2.5]*" emission by motor vehicle sources (Baltimore City vs Los Angeles County)"))

print(plot)

## Close device
dev.off()