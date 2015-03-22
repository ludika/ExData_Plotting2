# ExData_Plotting2
Plotting Assignment 2 for Exploratory Data Analysis
Project description: https://class.coursera.org/exdata-012/human_grading/view/courses/973506/assessments/4/submissions

### Questions & Answers

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

![plot1.png](https://raw.githubusercontent.com/ludika/ExData_Plotting1/blob/master/plot1.png)

Yes, total emissions from PM2.5 have decreased from 1999 to 2008.

2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

Total emissions have decreased in the observation period, but not with a monotonic trend; infact in 2005 we observe a higher value than the previous one. 

3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.

Non-road, nonpoint and on-road sources show a decreasing trend; on the contrary, point sources show a non-monotonic trend, increasing first and decreasing after 2005.
Moreover the most recent value is higher than the oldest one.

4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

In the entire country, emissions from coal combustion-related sources have a general decrease from 1999 to 2008, even if we observe a small increase in 2005.

5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

For the emissions from motor vehicle sources in Baltimore City, it's shown a decreasing monotonic trend.

6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

In Los Angeles County, emissions from motor vehicle sources have greater changes over time.