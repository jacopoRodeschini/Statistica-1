## LESSON-1 >> Begin with R 

## How to run command
# CTRL+ENTER

## Clear variables in the workspace (environment)
rm(list = ls()) # clear all environment variable
graphics.off()  # close all plot

## Set the seed of the random number generator (for reproducibility)
set.seed(1) 

## Set the working environment (env)
# ... 
setwd('./Documents/Dottorato/Esercitazioni_Materiale_Didattico/Statistica9CFU_Colombi/Esercitazioni/')


## Vector and matrix
vec <- c(4.1, 5, 6)

vec + 1         # add scalar
vec <- vec + c(1,2,3,4)  # sum of two vectors (error) why?

new_vec <- c(vec,1,2,3,4)

max(vec)
min(vec)
sum(vec)

vec[2]          # get the 2-position element
vec[2] <- 100

vec[c(2,3)]     # get the (2,3) position element

inx <- vec %% 2 == 0
inx <-vec >1
vec[inx]

vec2 <- seq(0.1, 3, by = 0.1)   # Create new vector

vec * vec2        # Product

length(vec * vec2)

vec3 <- rep(0,25)

## Matrices are constructed columnwise.

m <- matrix(1:6, nrow=2, ncol =3)

ey <- diag(5)
det(ey)

colSums(ey)
rowSums(ey)

res <- eigen(ey)

print("Hello word!")

print(res$values)

m <- matrix(rep(2,25),nrow = 25,ncol = 5)
det(m)
dim(m)

m <- matrix(rep(c(1:5),25),nrow = 5,ncol = 25)

m[3,1]
index <- 12
m[3,index]

## Missing values
vec <- c(1,2, NA, 4, 5)

data <- vec[!(is.na(vec))]

## Data frame
df <- data.frame(id = letters[1:100] , x = 1:100, y = rnorm(100))

sum(df$x)
max(df$y)

mean(df$y)
print(var(df$y))

dim(df)
head(df)

summary(df)

## Merge data frame
df_new <- data.frame(id = letters[1:24], b = factor(rnorm(24) > 0))

df_merge <- merge(df,df_new,by = 'id')

## IF & ELSE
if(df$y[2] > 0){
  print("Positive number")
  } else{
  print("Negative number")
}

## For iteration 
a<-0
for (i in 1:10) {
  a <- a + i
}
print(a)

## Load .csv file
# install tydyverse pacakges for more beatiful import
hospital <- read.csv("hospital.csv")
# class(hospital)

max(hospital$Weight)
min(hospital$Weight)

summary(hospital)

summary(factor(hospital$Sex))
summary(factor(hospital$Smoker))

mean(hospital$Weight)
mean(hospital$Weight[hospital$Smoker == 1])
mean(hospital$Weight[hospital$Smoker == 0])

## Plot the data
plot(hospital$Age,hospital$Weight)

sex <- hospital$Sex == 'Female'; 
plot(hospital$Age,hospital$Weight,xlab = "age",ylab = "weight", main = "Title: Age vs Weight")
abline(median(hospital$Weight[sex]),0,col = "red")
abline(median(hospital$Weight[!sex]),0, col = "blue")
legend("topleft", c("Female","Male"),
       pch = '-',col = c("red","blue"))

hist(hospital$Weight[sex])
hist(hospital$Weight[sex],20)

boxplot(hospital$Weight[sex],hospital$Weight[!sex])

var(hospital$Weight)
var(hospital$Weight[sex])

sqrt(var(hospital$Weight))
sd(hospital$Weight)

cor(hospital$Age, hospital$Weight)

## Homeworks: 
# 1) How to invert a matrix? (Solution today) 

# 2) Make a scatter plot (age,weight, g = sex)

# 3) Import new Dataset (see the zenodo page of agrimonia)

# 4) Based on the Agrimonia dataset build histogram/boxplot and compute the main descriptive statistics
# (boxplot by season / boxplot by station etc etc)

# bye
