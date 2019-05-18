plot2<-function(mydata = get_data()){
  png('plot2.png')
  par(mfrow = c(1,1),mgp = c(0.6,0.1,0),mar = c(2,2,0,0),cex.lab = 1,cex.axis = 0.5)
  all_time<-strptime(paste(mydata$Date,mydata$Time)," %d/%m/%Y %H:%M:%S")
  plot(all_time,mydata$Global_active_power,type = 'l',ylab = 'Global Active Power(kilowatts)',xlab = '')
  dev.off()
}