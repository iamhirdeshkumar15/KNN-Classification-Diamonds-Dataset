##because diamonds data set is in ggplot2 package
install.packages('ggplot2')
library(ggplot2)
##load data
data(diamonds)
View(diamonds)
##store it as data frame
dia <- data.frame(diamonds)

##create a random number equal 90% of total number of rows
ran <- sample(1:nrow(dia),0.9 * nrow(dia))
ran
##the normalization function is created
nor <-function(x) { (x -min(x))/(max(x)-min(x)) }

##normalization function is created
dia_nor <- as.data.frame(lapply
                         (dia[,c(1,5,6,7,8,9,10)],
                           nor))

##training data set extracted
dia_train <- dia_nor[ran,]

##test data set extracted
dia_test <- dia_nor[-ran,]
##the 2nd column of training data set because that is what we need to predict about testing data set
##also convert ordered factor to normal factor
dia_target <- as.factor(dia[ran,2])
dia_target

##the actual values of 2nd column of testing data set to compare it with values that will be predicted
##also convert ordered factor to normal factor
test_target <- as.factor(dia[-ran,2])

##run knn function
library(class)
pr <- knn(dia_train,dia_test,cl=dia_target,k=20)

##training data set extracted
dia_train <- dia_nor[ran,]

##test data set extracted
dia_test <- dia_nor[-ran,]
##the 2nd column of training data set because that is what we need to predict about testing data set
##also convert ordered factor to normal factor
dia_target <- as.factor(dia[ran,2])
dia_target

##the actual values of 2nd column of testing data set to compare it with values that will be predicted
##also convert ordered factor to normal factor
test_target <- as.factor(dia[-ran,2])

##run knn function
library(class)
pr <- knn(dia_train,dia_test,cl=dia_target,k=20)

##create the confusion matrix
tb <- table(pr,test_target)
tb
##check the accuracy
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(tb)



