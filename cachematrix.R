## makeCacheMatrix creates the matrix used as the input for the cacheSolve function.

makeCacheMatrix <- function(x=numeric()){
    m <- NULL
    set <- function(y) {
        c <<- y
        m <<- NULL
    }
    get <- function() x
    list (set =set, get = get)
}


## cacheSolve is used to solve the inverse matrix of the matrix created in makeCacheMatrix.

cacheSolve <- function (x) {
    m <- x$get()
    if(is.null(m)) {
        message("getting inversed matrix")
        return(m)
    }
    data <- x$get()
    m <- solve(data) # Get the inverse matrix
    m
    
}