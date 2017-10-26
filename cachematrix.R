## These functions will create a special invertible matrix, find its inverse,
## and then the result is cached to be called upon later

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
