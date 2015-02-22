## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=numeric()){
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    list (set =set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function (x) {
    m <- x$get()
    if(is.null(m)) {
        message("getting inversed matrix")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    m
    
}