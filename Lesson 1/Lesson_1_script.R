## LESSON-1 >> Begin with R 

## How to run command
# CTRL+ENTER

## Clear variables in the workspace (environment)
rm(list = ls()) # clear all environment variable
graphics.off()  # close all plot


## Set the seed of the random number generator (for reproducibility)
set.seed(1) 

## Set the working environment (env)
setwd('~/Documents/Dottorato/Esercitazioni_Materiale_Didattico/Statistica9CFU_Colombi/Esercitazioni/')

## Vector and matrix
vec <- c(4, 5, 6)


vec + 1         # add scalar
vec <- vec + c(1,2,3)  # sum of two vectors

max(vec)
min(vec)
sum(vec)

vec[2]          # get the 2-position element
vec(c(2,3))     # get the (2,3) position element

vec2 <- seq(0.1, 0.1*3, by = 0.1)   # Create new vector

vec * vec2        # Product

length(vec * vec2)

## Matrices are constructed columnwise.

m <- matrix(1:6, nrow=2, ncol =3)

ey <- diag(5,2)
det(ey)

## Missing values
vec <- c(1,2, NA, 4, 5)
vec[!(is.na(vec))]


## Data frame
df <- data.frame(id = letters[1:10], x = 1:10, y = rnorm(10))

sum(df$x)
max(df$y)

print(df$id)

dim(df)
print(df)
View(df)


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

hospital <- read.csv("hospital.csv")

max(hospital$Weight)
min(hospital$Weight)


summary(factor(hospital$Sex))
summary(factor(hospital$Smoker))

mean(hospital$Weight)
mean(hospital$Weight[hospital$Smoker == 1])
mean(hospital$Weight[hospital$Smoker == 0])


## Plot the data
plot(hospital$Age,hospital$Weight)

smk <- hospital$Smoker == 1; 
plot(hospital$Age,hospital$Weight,xlab = "age",ylab = "weight", main = "Title: Age vs Weight")
abline(median(hospital$Weight[smk]),0,col = "red")
abline(median(hospital$Weight[!smk]),0, col = "blue")




