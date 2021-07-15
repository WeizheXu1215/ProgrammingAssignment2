## M1 is a matrix with 2 rows and 2 columns, you can test my funtion with it :)
M1<-1:4
M1<-matrix(1:4,nrow=2)

## The makeCacheMatrix function create a list that stores 4 functions 
## in th list, including:
## get: A function which shows the matrix
## set: set value of another matrix to the object
## getinverse: get the inverse value of the matrix
## setinverse: set the inverse value of the matrix
## 
## i stores the value of inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## The following function is used to store the inverse of matrix
## to the list
## if the value is already stored in the list, then it will get the cached data

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data :)")
    return(i)
  }
  matrixy <- x$get()
  i <- solve(matrixy, ...)
  x$setinverse(i)
  i
}

