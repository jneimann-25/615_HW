### Jonathan Neimann ###

### Homework 1                                         ###
### Standard R ###

#Put your code in this file. Make sure you assign the relevant values to the correct variable names, which are given below. 
#Uncomment the variables as you assign your final values/functions/results to them.

### VECTORS ###
## Q1 

v1 <- c(1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
v2 <- c(rep(c(9,4,1), 10), 9)
v3 <- rep(c(0.1,0.2), times = 12)^(rep(c(3,1), times=12)*rep(1:12, each = 2))
  
### MATRICES ###

## Q2 
  
matA<- matrix(0, nrow = 6, ncol = 6)
matA[row(matA) == col(matA)+1] <- 1
matA[row(matA) == col(matA) - 1] <- 1

## Q3
set.seed(42)
matB<- matrix(sample(1:10, 60, replace = TRUE), nrow = 6, ncol = 10)
a3<- apply(matB, 1, function(row) sum(row > 4))
b3<-which(apply(matB, 1, function(row) sum(row ==7)) == 2)

## Q4

tmpFn <- function(xVec) {
  ifelse(xVec < 0, xVec^2 + 2*xVec + 3,
         ifelse(xVec < 2, xVec + 3,
                xVec^2 + 4*xVec - 7))
}


## Q5

quadmap<-function(start, rho, niter){
  result <- c(rep(0,niter))
  result[1] = start
  for (i in 2:niter){
    result[i] = rho*result[i-1]*(1-result[i-1])
  }
  return(result)
}
tmp <- quadmap(.95, 2.99, 500)

#why is this in scientific notation?

## Q6

In1<- function(xVec,yVec){
  return(colSums(outer(yVec,xVec,"<")))
  }
In2<-function(xVec,yVec){
  return(rowSums(sapply(yVec,function(y){y<xVec})))
}

## Q7

fibonacci <- function(n) {
  if (n < 0) {
    stop()
  }
  if (n==0 || n == 1 || n == 2) {
    return(1)
  }
  
  a <- 1
  b <- 1
  for (i in 3:n) {
    temp <- a + b
    a <- b
    b <- temp
  }
  return(b)
}

## Q8

tenmil <- function(){
  i <- 1
  product <- 1
  while(product < 10000000){
    i <- i+1
    product <- product *i
  }
  return(i)
}
n<- tenmil()

## Q9
matZ <- matrix(1:1000000, nrow = 100000, ncol = 10)
rowAdd<-numeric(100000)
for (i in 1:100000){
  rowAdd[i] <- sum(matZ[i,])
}

# I worked with Jordan and Chloe on these problems # 
  