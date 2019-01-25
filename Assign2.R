## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeVector <- function(x = numeric()) {
        MN <- NULL
        set <- function(y) {
                x <<- y
                MN <<- NULL
        }
        get <- function() x
        setmean <- function(mean) MN <<- mean
        getmean <- function() MN
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}




cachemean <- function(x, ...) {
        MN <- x$getmean()
        if(!is.null(MN)) {
                message("getting cached data")
                return(MN)
        }
        data <- x$get()
        MN <- mean(data, ...)
        x$setmean(MN)
        MN
}

