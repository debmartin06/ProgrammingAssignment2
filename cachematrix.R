## Put comments here that give an overall description of what your
## functions do

## calculates and caches the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

get <- function() x

setinverse <- function(solve) m <<- solve

getinverse <- function() m

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## to check for cached solution or solve if solution is not there

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	
	m <- x$getinverse()
	if(!is.null(m)) {
		message("Retrieving Cached Data")
		return(m)
	}
	
	data <- x$get()
	m <- solve(data)
	x$setinverse(m)
	m
}
