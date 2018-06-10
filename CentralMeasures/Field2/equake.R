fil <- read.csv("EARTHQUAKE.csv")
temp <- vector("numeric",length(fil$Time))
itr <- 1
for(dt in temp){
	temp[itr] <- itr
	itr <- itr + 1
}
fil$Index <- temp;

paste("Time summary \n")
quantile(fil$Time)
paste("Latitude summary \n")
quantile(fil$Latitude)
paste("Longitude summary \n")
quantile(fil$Longitude)
paste("Depth summary \n")
quantile(fil$Depth_Km)
paste("Magnitude summary \n")
quantile(fil$Magnitude)

boxplot(Time ~ Magnitude, data = fil, xlab = "Magnitude", ylab = "Time", main = "Earthquake")
boxplot(Latitude ~ Magnitude, data = fil, xlab = "Magnitude", ylab = "Latitude", main = "Earthquake")
boxplot(Longitude ~ Magnitude, data = fil, xlab = "Magnitude", ylab = "Longitude", main = "Earthquake")
boxplot(Depth_Km ~ Magnitude, data = fil, xlab = "Magnitude", ylab = "Depth", main = "Earthquake")
#boxplot(Magnitude ~ Index, data = fil, xlab = "Index", ylab = "Magnitude", main = "Earthquake")

sel <- vector("numeric",length(fil$Time))
itr <- 1
for(dt in fil$Time){
	sel[itr] = 0
	itr <- itr + 1
}

iqr = quantile(fil$Time,0.75) - quantile(fil$Time,0.25)
min <- quantile(fil$Time,0.25) - (1.5*iqr)
max <- quantile(fil$Time,0.75) + (1.5*iqr)
itr <- 1
for(dt in fil$Time){
	if(dt<min || dt>max){
		sel[itr] = 1
	}
	itr <- itr + 1
}

iqr = quantile(fil$Latitude,0.75) - quantile(fil$Latitude,0.25)
min <- quantile(fil$Latitude,0.25) - (1.5*iqr)
max <- quantile(fil$Latitude,0.75) + (1.5*iqr)
itr <- 1
for(dt in fil$Latitude){
	if(dt<min || dt>max){
		sel[itr] = 1
	}
	itr <- itr + 1
}

iqr = quantile(fil$Longitude,0.75) - quantile(fil$Longitude,0.25)
min <- quantile(fil$Longitude,0.25) - (1.5*iqr)
max <- quantile(fil$Longitude,0.75) + (1.5*iqr)
itr <- 1
for(dt in fil$Longitude){
	if(dt<min || dt>max){
		sel[itr] = 1
	}
	itr <- itr + 1
}

iqr = quantile(fil$Depth_Km,0.75) - quantile(fil$Depth_Km,0.25)
min <- quantile(fil$Depth_Km,0.25) - (1.5*iqr)
max <- quantile(fil$Depth_Km,0.75) + (1.5*iqr)
itr <- 1
for(dt in fil$Depth_Km){
	if(dt<min || dt>max){
		sel[itr] = 1
	}
	itr <- itr + 1
}

iqr = quantile(fil$Magnitude,0.75) - quantile(fil$Magnitude,0.25)
min <- quantile(fil$Magnitude,0.25) - (1.5*iqr)
max <- quantile(fil$Magnitude,0.75) + (1.5*iqr)
itr <- 1
for(dt in fil$Magnitude){
	if(dt<min || dt>max){
		sel[itr] = 1
	}
	itr <- itr + 1
}

corr <- 0
for(dt in sel){
	if(dt==0)corr <- corr + 1
}

ti <- vector("numeric",corr)
la <- vector("numeric",corr)
lo <- vector("numeric",corr)
de <- vector("numeric",corr)
ma <- vector("numeric",corr)

itr <- 1
itr1 <- 1
for(dt in sel){
	if(dt==0){
		ti[itr1] <- fil$Time[itr]
		la[itr1] <- fil$Latitude[itr]
		lo[itr1] <- fil$Longitude[itr]
		de[itr1] <- fil$Depth_Km[itr]
		ma[itr1] <- fil$Magnitude[itr]
		itr1 <- itr1 + 1
	}
	itr <- itr + 1
}

mfile <- data.frame(
	time <- ti,
	latitude <- la,
	longitude <- lo,
	depth <- de,
	magnitude <- ma
)

temp <- vector("numeric",corr)
itr <- 1
for(dt in temp){
	temp[itr] <- itr
	itr <- itr + 1
}
mfile$index <- temp;

boxplot(time ~ magnitude, data = mfile, xlab = "Magnitude", ylab = "Time", main = "Earthquake")
boxplot(latitude ~ magnitude, data = mfile, xlab = "Magnitude", ylab = "Latitude", main = "Earthquake")
boxplot(longitude ~ magnitude, data = mfile, xlab = "Magnitude", ylab = "Longitude", main = "Earthquake")
boxplot(depth ~ magnitude, data = mfile, xlab = "Magnitude", ylab = "Depth", main = "Earthquake")
#boxplot(magnitude ~ index, data = mfile, xlab = "Index", ylab = "Magnitude", main = "Earthquake")

#for (i in 1:5) { 
#    png(file=paste("plot",i,".png",sep=""))
#    plot(rnorm(10))
#    dev.off() 
#}
