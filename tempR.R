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
____
Chapter 5
# .*: A usual suspect! It can be read as "any character that is matched zero or more times".
# \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
# [0-9]+: Match the numbers 0 to 9, at least once (+).
# ([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.


today<-Sys.Date()
today
class(today)
now<-Sys.time()
now
class(now)

my_date<-as.Date("1971-05-14") #trys ISO YYYY-MM-DD ISO
as.Date("1971-14-05") #fails
as.Date("1971-14-05",format="%Y-%d-%m")
as.POSIXct() #changes string to time
my_time<-as.POSIXct("1971-05-14 11:25:15")
my_date+1 #POSIXt unit is day ; POSIXct unit is second

unclass(my_date) #number of days since 1st of Jan 1970
unclass(my_time) #number of seconds since 1st of Jan 1970 at midnight

#lubridate, zoo, and xts packages for time

# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)
# %H: hours as a decimal number (00-23)
# %I: hours as a decimal number (01-12)
# %M: minutes as a decimal number
# %S: seconds as a decimal number
# %T: shorthand notation for the typical format %H:%M:%S
# %p: AM/PM indicator

?strptime

format(time1,"%M")

# Use the function diff() on pizza to calculate the differences between consecutive pizza days. 


 
