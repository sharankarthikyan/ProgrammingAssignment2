## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  setting <- function(y) {
    x <<- y
    i <<- NULL
  }
  getting <- function() x
  settinginverse <- function(inverse) i <<- inverse
  gettinginverse <- function() i
  list(setting = setting,
       getting = getting,
       settinginverse = settinginverse,
       gettinginverse = gettinginverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$gettinginverse()
  if (!is.null(i)) {
    message("getting cache")
    return(i)
  }
  data <- x$getting()
  i <- solve(data, ...)
  x$settinginverse(i)
  i
}
