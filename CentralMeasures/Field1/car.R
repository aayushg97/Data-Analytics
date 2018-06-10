# Each row in the data represents the distance covered by the car at the given speed.
# In every row we can calculate the time for which the car travelled at the given speed.
# After calculating the time duration for each row, we can calculate average speed of the car by dividing sum of all distances by sum of all time durations.

fil <- read.csv("CARS.csv")

time <- vector("numeric",length(fil$speed))
itr <- 1
for(dt in fil$speed){
	time[itr] <- fil$dist[itr]/dt
	itr <- itr + 1
}
fil$time <- time

total <- 0
for(val in fil$speed){
	total <- total + val
}
AMSpeed <- total/length(fil$speed)

total <- 0
for(val in fil$dist){
	total <- total + val
}
TotDist <- total

total <- 0
for(val in fil$time){
	total <- total + val
}
TotTime <- total

prod <- 1
for(val in fil$speed){
	prod <- prod * val
}
GMSpeed <- prod ^ (1/length(fil$speed))

total <- 0
for(val in fil$speed){
	total <- total + (1/val)
}
HMSpeed <- length(fil$speed)/total

paste("Average speed of car :-",(TotDist/TotTime))
paste("Arithmetic Mean of speeds :-",AMSpeed)
paste("Geometric Mean of speeds :-",GMSpeed)
paste("Harmonic Mean of speeds :-",HMSpeed)
