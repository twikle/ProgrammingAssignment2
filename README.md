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

### How to test the function cachematrix.R

Follow these steps to test cachematrix.R

1.  Start R Studio
2.  Type 'source("cachematrix.R")'
3.  Type 'my_matrix <- matrix(c(1,1,4,2),nrow=2,ncol=2)'
4.  Type 'x <- makeCacheMatrix(my_matrix)'
5.  Type 'x$get()'
6.  You should see this:
         [,1] [,2]
[1,]    1    4
[2,]    1    2
7.  Type 'cacheSolve(x)'
8.  You should see this:
     [,1] [,2]
[1,] -1.0  2.0
[2,]  0.5 -0.5
9.  Type 'my_matrix <- matrix(c(1,1,2,4,1,3,2,2,1),nrow=3,ncol=3)'
10. Type 'x$set(my_matrix)'
11. Type 'x$get()'
12. You should see this:
     [,1] [,2] [,3]
[1,]    1    4    2
[2,]    1    1    2
[3,]    2    3    1
13. Type 'cacheSolve(x)'
14. You should see this:
           [,1]       [,2]       [,3]
[1,] -0.5555556  0.2222222  0.6666667
[2,]  0.3333333 -0.3333333  0.0000000
[3,]  0.1111111  0.5555556 -0.3333333



