source('LoadData.R');

#we have processed data in nData

Plot2 <- function()
{
	png(filename = "plot2.png", width = 480, height = 480, bg = "transparent");


	with(newD, plot(dateTimeC,Global_active_power,  main = "", xlab='', 
		ylab = "Global Active Power (kilowatts)", type='l'));

	dev.off();	

}