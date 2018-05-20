## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { i<-NULL ##cache matrix function is used for setting the value of inverse
  set<-function(y)##set funbction is used to set value
  {
    x<<-y
    i<<-NULL             
  }
get<-function()x ## get function is used to get the value directly
setinverse<-function(inverse) ## it helps in setting the inverse
{
  i<<-inverse
  
}
getinverse<- function()
  i
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)## inverse values and original values are set
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {   ##finds out inverse matrix using makeCacheMatrix function
        ## Return a matrix that is the inverse of 'x'
  
  i<-x$getinverse()
  if(!is.null(i))
  {
    message("cached data recieved") ## data is accepted from the function above
    return(i)
  }
  data<-x$get()
  i<-solve(data,...)
  x$getinverse()
  i
}
