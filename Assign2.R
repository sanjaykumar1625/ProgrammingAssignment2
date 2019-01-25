# Function : makeVector
# Purpose : Caching the inverse of a matrix


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


# Function : cachemean
# Purpose: perfomed the inverse o of "matrix" returned by makeVector()

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

