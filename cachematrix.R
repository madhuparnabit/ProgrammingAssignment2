## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#makeCacheMatrix creates a list containing a function to
#  set the value of the matrix 
#  get the value of the matrix
#  set the value of inverse of the matrix
#  get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {m <- NULL
set <- function(y)
{
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}




## Write a short comment describing this function

# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

# This function assumes that the matrix is always invertible.

cacheSolve <- function(x, ...) {m <- x$getinverse()
if(!is.null(m)) {
  message("retriving cache matrix")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}
        ## Return a matrix that is the inverse of 'x'

x = rbind(c(1, -1/2), c(-1/2, 1))
m = makeCacheMatrix(x)
m$get()

##No caching in the first run#

cacheSolve(m)

## Retrieving from the cache in the second run#

cacheSolve(m)

##We get the cached data




