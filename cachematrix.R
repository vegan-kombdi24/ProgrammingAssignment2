## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the valuve of x should be predefined matrix mat<-makeCacheMatrix(t"t is a predefined")
##   or should be added like this bmat<-makeCacheMatrix(t<-matrix(1:2,2,2))

makeCacheMatrix <- function(x = matrix()) {
         
         ma<- NULL
         set<- function(y=matrix()){
           x<<-y
           ma <<- NULL
         }
      get<- function() x
      setinv<- function(inverse) ma<<- inverse
      getinv<- function() ma
      
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)

}


## Write a short comment describing this function
## made use of matlib package 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ma <- x$getinv()
  if(!is.null(ma)) {
    message("getting cached data")
    return(ma)
  }
  data <- x$get()
  
  ma <- Inverse(data)
  x$setinv(ma)
  ma
  
  
  
}
