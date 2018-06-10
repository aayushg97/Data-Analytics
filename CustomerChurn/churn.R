require(rpart)
library(caret)
library(e1071)
library(party)
library(ROCR)
fil <- read.csv("E:\\Study\\5thSEM\\Data\ Analytics\\Projects\\CCD.csv")
fil <- subset(fil, select=-Id)

train.ind <- createDataPartition(fil$churn,times = 1,p = 0.7,list = FALSE)
trset <- fil[train.ind,]
tset <- fil[-train.ind,]


itr <- 1
for(data in trset$churn){
  if(data=="False")itr <- itr + 1
}
  

#Naive Bayes Classifier
nb <- naiveBayes(churn ~ ., data = trset)
itr <- itr + 1
nbres <- predict(nb,tset)
itr <- itr + 1
nbCM <- table(nbres,tset$churn)
itr <- itr + 1 

nbprec <- as.integer(nbCM[1,1])/(as.integer(nbCM[1,1])+as.integer(nbCM[1,2]))
nbacc <- (nbCM[1,1]+nbCM[2,2])/(nbCM[1,1]+nbCM[2,2]+nbCM[1,2]+nbCM[2,1]) 
nbrec <- nbCM[1,1]/(nbCM[1,1]+nbCM[2,1])

paste("Bayesian Confusion Matrix")
print(nbCM)

print("Bayesian Precision is :- ")
print(nbprec)
paste("")

print("Bayesian Accuracy is :- ")
print(nbacc)
paste("")

print("Bayesian Recall is :- ")
print(nbrec)
paste("")

itr <- itr + 1
pred <- prediction(as.numeric(nbres),as.numeric(tset$churn))
itr <- itr + 1
perf <- performance(pred,"tpr","fpr")
itr <- itr + 1
plot(perf,main="Naive Bayes")
itr <- itr + 1


itr1 <- 1
for(data in tset$churn){
  if(data=="False")itr1 <- itr1 + 1
}


#Decision tree
itr1 <- itr1 + 1
dt <- rpart(churn ~ ., data = trset)
itr1 <- itr1 + 1
dtres <- predict(dt,tset,type="class")
itr1 <- itr1 + 1
dtCM <- table(dtres,tset$churn)
itr1 <- itr1 + 1

dtprec <- as.integer(dtCM[1,1])/(as.integer(dtCM[1,1])+as.integer(dtCM[1,2]))
dtacc <- (dtCM[1,1]+dtCM[2,2])/(dtCM[1,1]+dtCM[2,2]+dtCM[1,2]+dtCM[2,1]) 
dtrec <- dtCM[1,1]/(dtCM[1,1]+dtCM[2,1])

paste("Decision Tree Confusion Matrix")
print(dtCM)

print("Decision Tree Precision is :- ")
print(dtprec)
paste("")

print("Decision Tree Accuracy is :- ")
print(dtacc)
paste("")

print("Decision Tree Recall is :- ")
print(dtrec)
paste("")

itr1 <- itr1 + 1
pred <- prediction(as.numeric(dtres),as.numeric(tset$churn))
itr1 <- itr1 + 1
perf <- performance(pred,"tpr","fpr")
itr1 <- itr1 + 1
plot(perf,main="Decision Tree")
itr1 <- itr1 + 1


itr2 <- 1
for(data in tset$churn){
  if(data=="False")itr2 <- itr2 + 1
}


#SVM classifier
itr2 <- itr2 + 1
cf1 <- svm(churn ~ ., data = trset)
itr2 <- itr2 + 1
svmres <- predict(cf1,tset)
itr2 <- itr2 + 1
svmCM <- table(svmres,tset$churn)
itr2 <- itr2 + 1

svmprec <- as.integer(svmCM[1,1])/(as.integer(svmCM[1,1])+as.integer(svmCM[1,2]))
svmacc <- (svmCM[1,1]+svmCM[2,2])/(svmCM[1,1]+svmCM[2,2]+svmCM[1,2]+svmCM[2,1]) 
svmrec <- svmCM[1,1]/(svmCM[1,1]+svmCM[2,1])

paste("SVM Confusion Matrix")
print(svmCM)

print("SVM Precision is :- ")
print(svmprec)
paste("")

print("SVM Accuracy is :- ")
print(svmacc)
paste("")

print("SVM Recall is :- ")
print(svmrec)
paste("")

itr2 <- itr2 + 1
pred <- prediction(as.numeric(svmres),as.numeric(tset$churn))
itr2 <- itr2 + 1
perf <- performance(pred,"tpr","fpr")
itr2 <- itr2 + 1
plot(perf,main="SVM")
itr2 <- itr2 + 1


# Improved Classification
fil <- read.csv("E:\\Study\\5thSEM\\Data\ Analytics\\Projects\\CCD.csv")
fil <- subset(fil, select=-Id)
fil <- subset(fil, select=-phone_number)
fil <- subset(fil, select=-state)

train.ind <- createDataPartition(fil$churn,times = 1,p = 0.7,list = FALSE)
trset <- fil[train.ind,]
tset <- fil[-train.ind,]


itr3 <- 1
for(data in trset$churn){
  if(data=="False")itr3 <- itr3 + 1
}


#Naive Bayes Classifier
itr3 <- itr3 + 1
nb <- naiveBayes(churn ~ ., data = trset)
itr3 <- itr3 + 1
nbres <- predict(nb,tset)
itr3 <- itr3 + 1
nbCM <- table(nbres,tset$churn)
itr3 <- itr3 + 1

nbprec <- as.integer(nbCM[1,1])/(as.integer(nbCM[1,1])+as.integer(nbCM[1,2]))
nbacc <- (nbCM[1,1]+nbCM[2,2])/(nbCM[1,1]+nbCM[2,2]+nbCM[1,2]+nbCM[2,1]) 
nbrec <- nbCM[1,1]/(nbCM[1,1]+nbCM[2,1])

paste("Bayesian Confusion Matrix")
print(nbCM)

print("Bayesian Precision is :- ")
print(nbprec)
paste("")

print("Bayesian Accuracy is :- ")
print(nbacc)
paste("")

print("Bayesian Recall is :- ")
print(nbrec)
paste("")

itr3 <- itr3 + 1
pred <- prediction(as.numeric(nbres),as.numeric(tset$churn))
itr3 <- itr3 + 1
perf <- performance(pred,"tpr","fpr")
itr3 <- itr3 + 1
plot(perf,main="Naive Bayes after improvement")
itr3 <- itr3 + 1


itr4 <- 1
for(data in tset$churn){
  if(data=="False")itr4 <- itr4 + 1
}


#Decision tree
itr4 <- itr4 + 1
dt <- rpart(churn ~ ., data = trset)
itr4 <- itr4 + 1
dtres <- predict(dt,tset,type="class")
itr4 <- itr4 + 1
dtCM <- table(dtres,tset$churn)
itr4 <- itr4 + 1

dtprec <- as.integer(dtCM[1,1])/(as.integer(dtCM[1,1])+as.integer(dtCM[1,2]))
dtacc <- (dtCM[1,1]+dtCM[2,2])/(dtCM[1,1]+dtCM[2,2]+dtCM[1,2]+dtCM[2,1]) 
dtrec <- dtCM[1,1]/(dtCM[1,1]+dtCM[2,1])

paste("Decision Tree Confusion Matrix")
print(dtCM)

print("Decision Tree Precision is :- ")
print(dtprec)
paste("")

print("Decision Tree Accuracy is :- ")
print(dtacc)
paste("")

print("Decision Tree Recall is :- ")
print(dtrec)
paste("")

itr4 <- itr4 + 1
pred <- prediction(as.numeric(dtres),as.numeric(tset$churn))
itr4 <- itr4 + 1
perf <- performance(pred,"tpr","fpr")
itr4 <- itr4 + 1
plot(perf,main="Decision Tree after improvement")
itr4 <- itr4 + 1


itr5 <- 1
for(data in tset$churn){
  if(data=="False")itr5 <- itr5 + 1
}


#SVM classifier
itr5 <- itr5 + 1
cf1 <- svm(churn ~ ., data = trset)
itr5 <- itr5 + 1
svmres <- predict(cf1,tset)
itr5 <- itr5 + 1
svmCM <- table(svmres,tset$churn)
itr5 <- itr5 + 1

svmprec <- as.integer(svmCM[1,1])/(as.integer(svmCM[1,1])+as.integer(svmCM[1,2]))
svmacc <- (svmCM[1,1]+svmCM[2,2])/(svmCM[1,1]+svmCM[2,2]+svmCM[1,2]+svmCM[2,1]) 
svmrec <- svmCM[1,1]/(svmCM[1,1]+svmCM[2,1])

paste("SVM Confusion Matrix")
print(svmCM)

print("SVM Precision is :- ")
print(svmprec)
paste("")

print("SVM Accuracy is :- ")
print(svmacc)
paste("")

print("SVM Recall is :- ")
print(svmrec)
paste("")

itr5 <- itr5 + 1
pred <- prediction(as.numeric(svmres),as.numeric(tset$churn))
itr5 <- itr5 + 1
perf <- performance(pred,"tpr","fpr")
itr5 <- itr5 + 1
plot(perf,main="SVM after improvement")
itr5 <- itr5 + 1

