fil <- read.csv("IRIS.csv")
pmeanSL <- mean(fil$SepalLengthCm)
pmeanSW <- mean(fil$SepalWidthCm)
pmeanPL <- mean(fil$PetalLengthCm)
pmeanPW <- mean(fil$PetalWidthCm)

pvarSL <- var(fil$SepalLengthCm)
pvarSW <- var(fil$SepalWidthCm)
pvarPL <- var(fil$PetalLengthCm)
pvarPW <- var(fil$PetalWidthCm)

v <- sample(1:150, 50, replace=FALSE)

getRvec <- function(a,b){
	t1 = vector("numeric",length(b))
	i <- 1
	for(itr in b){
		t1[i] = a[itr]
		i <- i + 1
	}
	
	t2 <- t1
}

t1 <- getRvec(fil$SepalLengthCm,v)
t2 <- getRvec(fil$SepalWidthCm,v)
t3 <- getRvec(fil$PetalLengthCm,v)
t4 <- getRvec(fil$PetalWidthCm,v)

smeanSL <- mean(t1)
smeanSW <- mean(t2)
smeanPL <- mean(t3)
smeanPW <- mean(t4)

svarSL <- var(t1)
svarSW <- var(t2)
svarPL <- var(t3)
svarPW <- var(t4)

paste("Mean Sepal Length of population :-",pmeanSL)
paste("Mean Sepal Width of population :-",pmeanSW)
paste("Mean Petal Length of population :-",pmeanPL)
paste("Mean Petal Width of population :-",pmeanPW)
print("")
paste("Variance of population of Sepal Length :-",pvarSL)
paste("Variance of population of Sepal Width :-",pvarSW)
paste("Variance of population of Petal Length :-",pvarPL)
paste("Variance of population of Petal Width :-",pvarPW)
print("")
paste("Variance of a random sample of Sepal Length :-",svarSL)
paste("Variance of a random sample of Sepal Width :-",svarSW)
paste("Variance of a random sample of Petal Length :-",svarPL)
paste("Variance of a random sample of Petal Width :-",svarPW)
