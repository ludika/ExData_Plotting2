## Read files
NEI <- readRDS("summarySCC_PM25.rds")

## Open png device and create file 
png(filename="plot3.png", width = 800, height = 800)

## Get subset of data about Baltimore City
Baltimore <- NEI[NEI$fips == "24510", ]

## Create and print plot
balt <- ggplot(Baltimore, aes(factor(year), Emissions, fill = type)) +
  geom_bar(stat="identity") +
  theme_bw() + 
  facet_grid(.~type) +
  guides(fill=FALSE) +
  xlab("Source type by year") +
  ylab(expression("PM"[2.5]*" emission (tons)")) +
  ggtitle(expression("Total PM"[2.5]*" emission in Baltimore City by source types"))

print(balt)

## Close device
dev.off()