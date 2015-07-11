#!/usr/bin/env Rscript 
# Coolers KNN classification example 1
# https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm
# Class A cases
X1 = c(0,0,0)
X2 = c(1,1,1)
X3 = c(2,2,3)
X4 = c(3,2,1)
 
# Class B cases
Y1 = c(6,6,3)
Y2 = c(5.5,7,7)
Y3 = c(6.5,5,6)
Y4 = c(4.2,9,8) 

# create classification matrix
train = rbind(X1,X2,X3,X4, Y1,Y2,Y3,Y4)
 
# Class labels vector (attached to each class instance)
cl = factor(c(rep("X",4),rep("Y",4)))
 
# The object to test if classified
test = c(2, 1,4)
 
# Load the class package that have  knn() function
library(class)
 
# call knn() function
result = knn(train, test, cl, k = 1)

# return result table in R
summary(result)
