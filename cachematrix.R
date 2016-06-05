## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of the matrix
## get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setcache <- function(solve) m <<- solve
        getcache <- function() m
        list(set = set, get = get,setcache = setcache, getcache = getcache)
        }





## this function first checks to see if the inverse of the matrix
## has already been calculated. If so, it gets the inverse from the cache
## and skips the computation.
## Otherwise, it calculates the inverse of the data and 
## sets the value of the inverse of the data
## in the cache via the setmean function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getcache()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setcache(m)
        m
}        

