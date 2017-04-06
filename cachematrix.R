## The folloeing two ftns are used to retrieve the inverse of a matrix 
##and store it in a cach so theat the next time a user tries to query 
##it they will get the saved value

## creates a cache and has function to
## get/set the matrix
## get/set the cache
makeCacheMatrix <- function(x = matrix()) {
  
  ##define hte cache to be used
  c <- NULL
  
  ##setter ftn() for the matrix
  set <- function(y){
    ##set imput matrix y to var x in parent environment
    x <<- y
    
    ##ensure c in parent environment is still NULL
    c <<- NULL
    
  }
  
  #getter ftn() for the matrix 
  get <- function(){
    x
  }
  
  ##set the cache c to the inverse of the matrix
  set_inverse <- function(inverse){
    c <<- inverse
  }
  
  ##get the cache c
  get_inverse <- function(){
    
  }
}

##inverts the matrix returned by makeCacheMatrix
##or if matrix has already been inverted retrieve it from cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
