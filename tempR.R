args(mean) #check arguments in a function
vec<-c(33,16,18,21,30,28)
mean(vec)
mean(vec,trim=0.2) #this will reorder the vec from smallest to greatest, 20% is 1.4 so remove smallest and largest entries and calculate mean then
ls() #shows what is in your environment
#the last executed function in the body of a function is the return value
#you can explicitly define the return value
triple<-function(x){
  y<-3*x
  return(y)
  }
math_magic<-function(a,b=1){
  if(b==0){
    return(0)
    }
  a*b+a/b
  }
#functions defined inside a function are not accessible outside the function
pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x
