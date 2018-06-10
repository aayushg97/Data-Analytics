getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

getOmedian <- function(v){
	temp = vector("numeric",length(v));
	
	itr <- 1
	for(dt in v){
		if(dt=="two"){
			temp[itr] = 2
			itr <- itr + 1
		}
		else{
			if(dt=="four"){
				temp[itr] = 4
				itr <- itr + 1
			}
		}
	}
	
	sort(temp,decreasing = FALSE)
	med1 <- ""
	if(temp[(length(temp)/2)+1]==2){
		med1 <- "two"
	}
	else{
		if(temp[(length(temp)/2)+1]==2){
			med1 <- "four"
		}
	}
	med <- med1
}

gettrimmed <- function(v){
	leng <- 0
	for(dt in v){
		if(dt!="?"){
			leng <- leng + 1
		}
	}
	
	temp = vector("numeric",leng)
	itr <- 1
	for(dta in v){
		if(dta!="?"){
			temp[itr] = dta
			itr <- itr + 1
		}
	}
	
	temp1 <- temp;
}

fil <- read.csv("AUTOMOBILES.csv")
data <- getmode(fil$make)
paste("Mode of make column is :-",data)

data <- getmode(fil$num_of_doors)
paste("Mode of num_of_doors column is :-",data)
med <- getOmedian(fil$num_of_doors)
paste("Median of num_of_doors column is :-",med)

temp <- fil$length
data <- getmode(temp)
paste("Mode of length column is :-",data)
paste("Median of length column is :-",median(temp))
paste("Mean of length column is :-",mean(temp))

temp <- fil$compression_ratio
data <- getmode(temp)
paste("Mode of compression_ratio column is :-",data)
paste("Median of compression_ratio column is :-",median(temp))
paste("Mean of compression_ratio column is :-",mean(temp))

rpm <- as.numeric(gettrimmed(fil$peak_rpm))
hist(rpm,probability = TRUE)

mpg <- as.numeric(gettrimmed(fil$city_mpg))
hist(mpg,probability = TRUE)
