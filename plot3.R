source('LoadData.R');

#we have processed data in nData

Plot3 <- function()
{
	png(filename = "plot3.png", width = 480, height = 480, bg = "transparent");


	with(newD, 
		{
		plot(dateTimeC, Sub_metering_1,  
		main = "", xlab='', ylab = "Energy sub metering", type='l')
		points(dateTimeC, Sub_metering_2,  
		main = "", xlab='', ylab = "Energy sub metering", type='l', col='red')
		points(dateTimeC, Sub_metering_3,  
		main = "", xlab='', ylab = "Energy sub metering", type='l', col='blue')
		legend("topright", lty = 1, col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))


		});

	dev.off();	

}