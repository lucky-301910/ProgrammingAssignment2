## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {    # Function to create cache matrix

  m <- NULL                                    # Inititalizing a variable
  set <- function(y) {                         # function to create a random matrix
    x <<- y                                    # giving the value in current environment
    m <<- NULL                                 # giving the value in current environment
  }
  get <- function() x                          
  setinverse <- function(solve) m <<- mean     # finding the inverse of the matrix for the first time
  getinverse <- function() m                   # getting the value of the inverse
  list(set = set, get = get,                   
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()                          # Getting an inverse of the matrix
  if(!is.null(m)) {                            # checking if the inverse has already been calculated or not.
    message("getting cached data")
    return(m)                                  # returning the alreaady calculated value of inverse
  }
  data <- x$get()
  m <- solve(data, ...)                        # in case the inverse hasn't been calculated, then calculating the inverse for the first time.
  x$setinverse(m)                              
  m
  
  
  }
