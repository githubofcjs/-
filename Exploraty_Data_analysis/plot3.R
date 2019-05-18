plot3<-function(mydata = get_data()){
  par(mfrow = c(1,1),mgp = c(0.6,0.1,0),mar = c(2,2,0,0),cex.lab = 0.7,cex.axis = 0.5)
  all_time<-strptime(paste(mydata$Date,mydata$Time)," %d/%m/%Y %H:%M:%S")
  plot(all_time,mydata$Sub_metering_1,type = 'l',xlab = '',ylab = 'Energy Sub metering')
  lines(all_time,mydata$Sub_metering_2,type = 'l',col = 'red')
  lines(all_time,mydata$Sub_metering_3,type = 'l',col = 'blue')
  legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col = c('black','red','blue'),lty = 1,cex = 0.5)

}