source('LoadData.R');

#we have processed data in nData

Plot4 <- function()
{
	png(filename = "plot4.png", width = 480, height = 480, bg = "transparent");

	par(mfcol=c(2,2)); #2x2 matrix columnwise

	#1,1 position

	with(newD, plot(dateTimeC,Global_active_power,  main = "", xlab='', 
		ylab = "Global Active Power", type='l'));
	
	#2,1 position
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

	#1,2 position
	with(newD, plot(dateTimeC,Voltage,  main = "", xlab='datetime', 
		ylab = "Voltage", type='l'));

	#2,2 position
	with(newD, plot(dateTimeC, Global_reactive_power,  main = "", xlab='datetime', 
		ylab = "Global_reactive_power", type='l'));

	dev.off();	

}