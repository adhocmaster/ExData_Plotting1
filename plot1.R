source('LoadData.R');

#we have processed data in nData

Plot1 <- function()
{
	png(filename = "plot1.png", width = 480, height = 480, bg = "transparent");
	hist(nData$Global_active_power, col="red",  main = "Global Active Power", 
		xlab = "Global Active Power (kilowatts)");
	dev.off();	

}