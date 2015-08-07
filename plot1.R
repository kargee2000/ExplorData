cou <- read.table("F:/KG/per/coursera/explor/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",head=TRUE)

cou1$Global_active_power1 <- as.numeric(as.character(cou1$Global_active_power))

cou$Date1 <- as.Date(cou$Date,'%d/%m/%Y')
cou1 <- cou[cou$Date1 == '2007-02-01' | cou$Date1 == '2007-02-02' ,]

png(filename="F:/KG/per/coursera/explor/exdata-data-household_power_consumption/plot1.png")
hist(cou1$Global_active_power1,freq=TRUE,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
dev.off()

