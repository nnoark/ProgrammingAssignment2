## These functions will create a special invertible matrix, find its inverse,
## and then the result is cached to be called upon later

## Sets the matrix
## Gets the matrix
## Sets the inverse
## Gets the inverse

makeCacheMatrix <- function(x = matrix()) {
                I <- NULL
                set <- function(y) {
                  x <<- y
                  I <<- NULL
                }
                get <- function() x
                setinverse <- function(solve) I <<- inverse
                getinverse <- function() I
                list(set = set, get = get, 
                    setinverse = setinverse, getinverse = getinverse)
                
}


## Returns the inverse of the created matrix
## If the inverse is already found, gets the inverse from the cache

cacheSolve <- function(x, ...) {
          I <- x$getinverse()
          if(!is.null(I)) {
            message("Getting cached matrix")
            return(I)
          }
          data <- x$get()
          I <- solve(data, ...)
          x$setinverse(I)
          I
}
