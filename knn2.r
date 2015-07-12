#!/usr/bin/env Rscript 
# Coolers KNN simple classification example 2
# https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm
# so this example i open two CSV files with vectors with three elements, each element is a int or float number...
# Class A cases read CSV file, split each element per ","
A <- read.table("data1.csv",header=F,sep=",")
B <- read.table("data2.csv",header=F,sep=",")
#if u need debug var use function dput()
#dput(gradesA)
testX = c(0,1,2)
# create classification matrix, concatenate table A with B
train = rbind(A,B)
# Class labels vector (attached to each class instance)
cl = factor(c(rep("A",4),rep("B",4))) 
# The object to test if classified
# Load the class package that have  knn() function
library(class)
# call knn() function
result = knn(train, testX, cl, k = 1)
# return result table in R
summary(result)
