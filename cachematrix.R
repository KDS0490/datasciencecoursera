## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##The first function, makeVector would perform the following tasks:
#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
  inverse_kd <- NULL
  set <- function(kd) {
    x <<- y
    inverse_kd <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverse_kd <<- inverse
  getinverse <- function() inverse_kd
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse() # This fetches the cached value for the inverse
  if(!is.null(m)) { # If the cache was not empty, we can just return it
    message("here comes cached data")
    return(m)
  }
  # The cache was empty. We need to calculate it, cache it, and then return it.
  data <- x$get()  # Get value of matrix
  m <- solve(data) # Calculate inverse
  x$setInverse(m)  # Cache the result
  m                # Return the inverse
}
