## Read files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Open png device and create file 
png(filename="plot4.png", width = 800, height = 800)

## Get subset of data about coal and combustion source types
SCCcomb <- grepl("comb", SCC$SCC.Level.One, ignore.case=TRUE)
SCCcoal <- grepl("coal", SCC$SCC.Level.Four, ignore.case=TRUE)
CoalCombustion <- (SCCcomb & SCCcoal)

subSCC <- SCC[CoalCombustion,]$SCC
subNEI <- NEI[NEI$SCC %in% subSCC,]

## Create and print plot
plotcc <- ggplot(subNEI, aes(factor(year), Emissions/10^3)) +
  geom_bar(stat="identity", fill="grey") +
  theme_bw() +
  xlab("Year") +
  ylab(expression("PM"[2.5]*" emission (Kilotons)")) +
  ggtitle(expression("Total PM"[2.5]*" emission by coal combustion-related source types"))
  
print(plotcc)

## Close device
dev.off()