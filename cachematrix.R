## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#ell to Write somme comments discribing this function ! 
#this function is similr to the mke vector nd che vector itch re just the sme the only chngement i hd done 
# to replce object of type Vector() by Object of type mterix nd the men function by the  
#solve function, this is my first submission of this home ork nd i hope its is correcte.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setcachematrix <- function(solve) m <<- solve
  getcachematrix <- function() m
  list(set = set, get = get,
       setcachematrix = setcachematrix,
       getcachematrix = getcachematrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getcachematrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setcachematrix(m)
  m
}
