## The following two ftns are used to retrieve the inverse of a matrix 
##and store it in a cach so theat the next time a user tries to query 
##it they will get the saved value

## creates a cache and has function to
## get/set the matrix
## get/set the cache
makeCacheMatrix <- function(x = matrix()) {
  
  ##define hte cache to be used
  inversed_matrix <- NULL
  
  ##setter ftn() for the matrix
  set <- function(y){
    ##set imput matrix y to var x in parent environment
    x <<- y
    
    ##ensure inversed_matrix in parent environment is still NULL
    inversed_matrix <<- NULL
    
  }
  
  #getter ftn() for the matrix 
  get <- function(){
    x
  }
  
  ##set the cache inversed_matrix to the inverse of the matrix
  set_inverse <- function(inverse){
    inversed_matrix <<- inverse
  }
  
  ##get the cached inversed_matrix
  get_inverse <- function(){
    inversed_matrix
  }
  
  ##list the above ftns()
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##inverts the matrix returned by makeCacheMatrix
##or if matrix has already been inverted retrieve it from cache
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ##set inversed_matrix as the result of getinverse()
  inversed_matrix <- x$getinverse()
  
  ##if inversed_matrix not null get return inversed_matrix
  if(!is.null(inversed_matrix)) {
    message("getting cached data")
    return(inversed_matrix)
  }
  
  ##call get and saves to var data
  data <- x$get()
  
  ##get the inverse of data
  inversed_matrix <- solve(data, ...)
  
  ##set cached data to inverse
  x$setinverse(inversed_matrix)
  
  ##self explandatory
  inversed_matrix
}
