# Course: Introduction to R -----------------------------------------------

# Chapter 1: Intro to basics ----------------------------------------------


# Chapter 2: Vectors ------------------------------------------------------

poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector<-c(-24,-50,100,-350,10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector)<-days_vector
names(roulette_vector)<-days_vector
poker_vector[2]
poker_vector[c(2,3)]
poker_vector[2:4]
poker_start<-poker_vector[c("Monday","Tuesday","Wednesday")]
mean(poker_start)
selection_vector<-poker_vector>0
selection_vector
poker_vector[selection_vector]
sum(poker_vector[selection_vector])


# Chapter 3: Matrices -----------------------------------------------------

matrix(1:9,byrow=TRUE,nrow=3)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
box_office<-c(new_hope,empire_strikes,return_jedi)
box_office
star_wars_matrix<-matrix(box_office,byrow = TRUE,nrow=3)
star_wars_matrix
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix)<-region
rownames(star_wars_matrix)<-titles
star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,dimnames = list(titles, region))
worldwide_vector <- rowSums(star_wars_matrix)
all_wars_matrix1<-cbind(star_wars_matrix,worldwide_vector)
all_wars_matrix1
star_wars_matrix_2<-matrix(c(474.5,552.5,310.7,338.7,380.3,468.5),byrow = TRUE,nrow = 3,dimnames = list(c("The Phantom Menace","Attack of the Clones","Revenge of the Sith"),c("US","non-US")))
worldwide_vector_2<-rowSums(star_wars_matrix_2)
all_wars_matrix2<-cbind(star_wars_matrix_2,worldwide_vector_2)
all_wars_matrix2
all_wars_matrix<-rbind(all_wars_matrix1,all_wars_matrix2)
all_wars_matrix
Total<-colSums(all_wars_matrix)
matrix<-rbind(all_wars_matrix,Total)
matrix
matrix[1]
matrix[2,]
matrix[,2]
matrix[1:2,2]


# Chapter 4: Factors ------------------------------------------------------

sex_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_sex_vector <-factor(sex_vector)
factor_sex_vector

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
summary(factor_temperature_vector)
t1<-factor_temperature_vector[1]
t2<-factor_temperature_vector[2]
t1
t2
t1>t2

#Female/Male
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector)<-c("Female","Male")
factor_survey_vector
summary(survey_vector)
summary(factor_survey_vector)
summary(factor_temperature_vector)
summary(factor_animals_vector)


# Chapter 5: Data Frames --------------------------------------------------

mtcars
head(mtcars)
tail(mtcars)
str(mtcars)


# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <-data.frame(name,type,diameter,rotation,rings)
planets_df
planets_df[1,3]
planets_df[4,]
planets_df[1:5,"diameter"]
rings_vector <- planets_df$rings
planets_df[rings_vector,]
subset(planets_df, subset = rings)

a<-c(100,10,1000)
ordered(a)
order(a)
a[order(a)]


positions <-  order(planets_df$diameter)
planets_df[positions,]


# Chapter 6: Lists --------------------------------------------------------

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <-list(my_vector,my_matrix,my_df)
names(my_list)<-c("vec","mat","df")
my_list
my_list<-list(vec=my_vector,mat=my_matrix,df=my_df)

my_list[1]
my_list[[1]]
class(my_list[1])
class(my_list[[1]])
typeof(my_list[1])
typeof(my_list[[1]])
my_list$vec
my_list["vec"]
my_list[["vec"]]
my_list[1][1] #only 1 element in the list
my_list[1][2]
my_list[[1]][3] #here it is a vector that has many elements
