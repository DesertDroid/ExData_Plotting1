## Ensure the locale is en_US
Sys.setlocale("LC_ALL", "en_US.UTF-8")

## We check whether it has the file in the current dir.
if (!"load_data.R" %in% list.files()) {
        setwd("~/repos/Coursera/dataScience/ExploratoryDataAnalysis/ExData_Plotting1")
} 
source("load_data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()