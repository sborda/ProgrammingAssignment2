## Put comments here that give an overall description of what your
## functions do

# My first function creates a matrix and store the inverse in a different environment
# The second function creates a different matrix and compares it with the 
# matrix previously constructed, if they are equal and the invers exists, 
# the function returns the inverse stored, else calculates a new inverse.


## Write a short comment describing this function

# Creates a function with the variables data, nrow and col that are 
# evaluated in a matrix. The matrix is stored in a parent environemnt

makeCacheMatrix <- function(data,nrow,ncol){
        X <<- matrix(c(data),nrow,ncol)          
        y <<- solve(X)
}


## Write a short comment describing this function

# Creates a new matrix Xa, and compares it with the matrix stored in the
# makeCacheMatrix function. If matrixes are equal and the inverse exists, it
# returns the inverse previously created.
# If the matrix are not equal, and therefore an inverse for that matrix
# does not exists, it evaluates the inverse of that new matrix.
# Finnaly it returns the new inverse matrix stored in the variable "l".

cacheSolve <- function(data,nrow,ncol){
        Xa <- matrix(c(data),nrow,ncol)
        if(identical(X,Xa) && !is.null(y)) {
                message("getting cached data")
                return(y)
        }
        l<- solve(Xa)
        return(l)
}
