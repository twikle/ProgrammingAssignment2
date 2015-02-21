### Assignment: Caching the Inverse of a Matrix

The following functions were created.

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

### makeCacheMatrix
The code is below:
makeCacheMatrix <- function(x=numeric()){
    m <- NULL
    set <- function(y) {
        c <<- y
        m <<- NULL
    }
    get <- function() x
    list (set =set, get = get)
}

### cacheSolve
The following function solves the inverse matrix. If x does not return a matrix, then a message is displayed.

cacheSolve <- function (x) {
    m <- x$get()
    if(is.null(m)) {
        message("getting inversed matrix")
        return(m)
    }
    data <- x$get()
    m <- solve(data) # Get the inverse matrix
    m



