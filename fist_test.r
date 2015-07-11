#!/usr/bin/env Rscript 
# simple R study by Cooler_
# start the basics 

#fibonaci test function
fibonaci_sum <- function(x) 
{
    if ((x == 0) | (x == 1)) 
        return(1)
    else
        return(fibonaci_sum(x-1) + fibonaci_sum(x-2))
}

#to get argv
args <- commandArgs(TRUE)

#to test input and output
cat("say something to make input:  ")
x <- readLines(file("stdin"),1)
# validate if input is a word...
if(grepl('[a-z]+',x)) 
{
	cat("you say ",x,"\n")
}
cat("argv 1 is ",args[1],"\n")

# validate if input is number
if(grepl('[1-9]+',args[1])) 
{
	cat("fibonaci test ",fibonaci_sum(strtoi(args[1],10)),"\n")
}

#concatenate strings
a <- "test one "
b <- "two \n"
c <- paste(a,b)
cat(c)
