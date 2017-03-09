##Prepared by Shelby Brambach, 3/9/2017
##Title: Programming Assignment 2
##Course: R Programming, Week 3, Lexical Scoping

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL  ## a variable that is available to nested function
		set<-function(y){
			x <<- y
			m <<- NULL  ##set m to NULL
		}

        get = function() x
        	setinv <- function(solve) inv <<- solve 
			##sets inverse of x with solve
        	getinv <- function() inv
			##places the inverse in cache

        	list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## This function returns the inverse from the makeCacheMatrix function
## This function is calling makeCacheMatrix, so the values for x (ex. x$getinv()) are avilable to the call stack.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv <- x$getinv()
        return(inv)
        }

