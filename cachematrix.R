## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## input matrix "x" is set and inverse "m" is set and subsequently we get "x","m" values

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() {x}
        setinverse <- function(inverse) {m <<- inverse}
        getinverse <- function() {m}
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x,...) {
        m <- x$getinverse() # get inverse if it's already calculated
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()  # get "x" matrix to calculate its inverse
        m <- solve(data,...)  # calculate inverse
        x$setinverse(m)
        m   # m is the inverse of matrix x, and m is returned.
}       

