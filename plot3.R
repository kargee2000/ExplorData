cou <- read.table("F:/KG/per/coursera/explor/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",head=TRUE)

cou$datetim <- paste(cou$Date,cou$Time)
cou$datetim1 <- strptime(cou$datetim,"%d/%m/%Y %H:%M:%S")
cou$Date1 <- as.Date(cou$Date,'%d/%m/%Y')
cou1 <- cou[cou$Date1 == '2007-02-01' | cou$Date1 == '2007-02-02' ,]
cou1$Global_active_power1 <- as.numeric(as.character(cou1$Global_active_power))


png(filename="F:/KG/per/coursera/explor/exdata-data-household_power_consumption/plot3.png")
plot(cou1$datetim1,cou1$Sub_metering_1,type="l",col="black",ylab="Energy sub metering",xlab="")
lines(cou1$datetim1,cou1$Sub_metering_2,type="l",col="red")
lines(cou1$datetim1,cou1$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()

