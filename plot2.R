cou <- read.table("F:/KG/per/coursera/explor/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",head=TRUE)

cou$datetim <- paste(cou$Date,cou$Time)
cou$datetim1 <- strptime(cou$datetim,"%d/%m/%Y %H:%M:%S")
cou$Date1 <- as.Date(cou$Date,'%d/%m/%Y')
cou1 <- cou[cou$Date1 == '2007-02-01' | cou$Date1 == '2007-02-02' ,]
cou1$Global_active_power1 <- as.numeric(as.character(cou1$Global_active_power))


png(filename="F:/KG/per/coursera/explor/exdata-data-household_power_consumption/plot2.png",width=480,height=480)
plot(cou1$datetim1,cou1$Global_active_power1,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

