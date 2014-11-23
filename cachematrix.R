## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
  i <- NULL
    
    get <- function() {
     
  m
        }
    
  #to set invese of the matrix 'm'     
  setInverse <- function(inverse) {
  i <<- inverse
  }
    
 
getInverse <- function() {
  i
  }

#list of methods  
 list(set = set, get = get,
 setInverse = setInverse,
getInverse = getInverse)
    }

  
 cacheSolve <- function(x, ...) {
  
 m <- x$getInverse()
    
 if( !is.null(m) ) {
message("getting cached data")
return(m)
  }
    
 data <- x$get()
    
 m <- solve(data) %*% data
    
 x$setInverse(m)
    
   m
    }



## Write a short comment describing this function
# This function is used to create "matrix" object that can cache its inverse.
#cacheSolve is used to computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
