if(!exists("LoadEPCData", mode = "function"))
{
	LoadEPCData <- function()
	{
		rawAll <- read.csv('household_power_consumption.txt', 
						stringsAsFactors =FALSE, na.strings="?", 
						sep=";");
		#nrow(rawAll);
		#colnames(rawAll);
		rD <- transform(rawAll, Date=as.Date(Date, "%d/%m/%Y"))
		#nrow(rD);
		needed <- subset(rD, Date=='2007-02-01' | Date == '2007-02-02');
		#nrow(needed);
		#head(needed);
		dateTime <- paste(needed$Date, needed$Time);
		dateTimeC <- strptime(dateTime, "%Y-%m-%d %H:%M:%S");
		needed <-cbind(needed, dateTimeC);
		#head(needed);
		return(needed);
	}
	message('loaded LoadData Library');
	nData <- LoadEPCData(); 
	# get the data needed with some processed fields and set into "nData" which is in calling environment!
	# nData acts as a cached data here. 
}