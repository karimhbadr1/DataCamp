# Course: Intermediate R -----------------------------------------------

# Chapter 1: Conditionals and Control Flow --------------------------------

TRUE==TRUE
TRUE==FALSE
"hello"=="goodbye"
2==4
"hello"!="goodbye"
3<4
"hello">"Goodbye"
TRUE>FALSE
linkedin<-c(16,9,13,5,2,17,14)
facebook<-c(17,7,5,16,8,13,14)
linkedin
linkedin>10
facebook<=linkedin
TRUE==1
"raining"<="raining dogs"
"raining"<"raining dogs"
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views
views==13
views<=14
TRUE&TRUE
TRUE&FALSE
FALSE&FALSE
x<-12
x>5&x<15
TRUE|TRUE
TRUE|FALSE
FALSE|FALSE
!TRUE
!4
is.numeric(5)
!is.numeric("hello")
c(TRUE,TRUE,FALSE)&c(TRUE,FALSE,FALSE)
c(TRUE,TRUE,FALSE)|c(TRUE,FALSE,FALSE)
c(TRUE,TRUE,FALSE)&&c(TRUE,FALSE,FALSE) #only looks at first elements
c(TRUE,TRUE,FALSE)||c(TRUE,FALSE,FALSE) #only looks at first elements
!12
!!12
x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))
extremes<-c(TRUE,FALSE,TRUE,TRUE,FALSE)
sum(extremes)

x<--3

if(x<0){
  print("x is a negative number")
}

x<-4
if(x<0){
  print("x is a negative number")
}

if(x<0){
  print("x is a negative number")
} else {
  print("x is either a positive number or 0")
}

x<-0

if(x<0){
  print("x is a negative number")
} else if (x==0) {
  print("x is 0")
} else {
  print("x is a positive number")
}

num_views<-17

if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}


# Chapter 2: Loops --------------------------------------------------------

ctr<-1

while(ctr<=7){
  print(paste("ctr is set to",ctr))
  ctr<-ctr+1
}

ctr<-1
while(ctr<=7){
  if(ctr%%5==0){
    break
  }
  print(paste("ctr is set to",ctr))
  ctr<-ctr+1
}

cities<-c("New York","Paris","London","Tokyo","Rio de Janerio","Cape Town")

for (city in cities) {
  print(city)
}

for (city in cities) {
  if (nchar(city)==6){
    break
  }
  print(city)
}


for (city in cities) {
  if (nchar(city)==6){
    next
  }
  print(city)
}

for (i in 1:length(cities)){
  print(paste(cities[i],"is on position",i,"in the cities vector."))
}

nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (i in nyc){
  print(i)
}

# Loop version 2
for (i in 1:length(nyc)){
  print(nyc[[i]])
}

ttt<-c("O",NA,"X",NA,"O","O","X",NA,"X")
ttt<-matrix(ttt,nrow=3,byrow = TRUE)

for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row",i,"and column",j,"the board contains",ttt[i,j]))
  }
}

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  if (li>16){
    print("This is ridiculous, I'm outta here!")
    break
  }
  if (li<5){
    print("This is too embarrassing!")
    next
  }
  print(li)
}

rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

# Initialize rcount
rcount <- 0

# Finish the for loop
for (char in chars) {
  if (char=="r"){
    rcount<-rcount+1
  }
  if (char=="u"){
    break
  }
}

# Print out rcount
rcount


# Chapter 3: Functions ----------------------------------------------------

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
search()
require()
library(ggplot2)


# Chapter 4: The apply family ---------------------------------------------

nyc<-list(pop=8405837,
          boroughs=c("Manhattan","Bronx","Brooklyn","Queens","Staten Island"),
          capital=FALSE)
for (info in nyc){
  print(class(info))
}

lapply(nyc,class)

cities<-c("New York","Paris","London","Tokyo","Rio de Janerio","Cape Town")

num_chars<-c()
for (i in 1:length(cities)){
  num_chars[i]<-nchar(cities[i])
}

lapply(cities,nchar)

unlist(lapply(cities,nchar))

oil_prices<-c(2.37,2.49,2.18,2.22,2.47,2.32)

triple<-function(x){
  3*x
}

lapply(oil_prices,triple)
unlist(oil_prices,triple)

multiply<-function(x,factor){
  factor*x
}

unlist(lapply(oil_prices,multiply,factor=3))

a<-list(1,"a",TRUE)

str(a)

lapply(a,str)

#lapply returns a list

#sapply : simplify apply : list to array [named]

sapply(cities,nchar)
a<-sapply(cities,nchar)
typeof(a)
class(a)

sapply(cities,nchar,USE.NAMES = FALSE) #unnamed array

first_and_last<-function(name){
  name<-gsub(" ","",name)
  letters<-strsplit(name,split="")[[1]]
  c(first=min(letters),last=max(letters))
}

first_and_last("New York")

lapply(c("New York","Naw City"),first_and_last)


sapply(c("New York","Naw City"),first_and_last)

unique_letters<-function(name){
  name<-gsub(" ","",name)
  letters<-strsplit(name,split="")[[1]]
  unique(letters)
}

unique_letters("New York")

lapply(c("New York","Spain","Mexico"),unique_letters)
sapply(c("New York","Spain","Mexico"),unique_letters)

identical(a,1)

cat("a","is",a) #concatenate and print

sapply(cities,nchar)
vapply(cities,nchar,numeric(1))

vapply(c("New York","Naw City"),first_and_last,character(2))
#in v apply, the FUN.VALUE argument specifies what we expect the format of the output over each element to be
vapply(c("New York","Spain","Mexico"),unique_letters) #doesnt work because it cant be simplified


# Chapter 5: Utilities ----------------------------------------------------

abs()
sum()
round()
mean()
seq(8,2,by=-2)
rep(c(1,2),time=7)
rep(c(1,2),each=7)
sort()
str()
is.character()
as.character()
unlist()
append() #adds
append(c(1,8),c(2,3,4))
rev(c(2,1)) #reverses

grep()
grepl()
sub()
gsub()

animals<-c("cat","moose","impala","ant","kiwi")

grepl("a",animals) #returns logical vector
grepl("^a",animals) #starts with a
grepl("a$",animals) #ends with a
?regex #regular expressions documentation
grep("a",animals) #returns indicies
which(grepl("a",animals)) #same as grep

sub("a","o",animals) #looks only for 1st match
gsub("a","o",animals) #replaces all matches

gsub("a|i","o",animals) #| is like or
sub("a|i","o",animals)

# .* #this means any character (.) zero or more times (*)
# \\.edu$ #this means it ends with .edu and we use \\ to escape the . and treat it as a character itself not as any character

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