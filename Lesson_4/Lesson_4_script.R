## Lezione 3 - Teoria delle distribuzioni

# Es. 1
# fare il grafico della funzione di ripartizione
d = seq(0,20,0.01)
lambda = 0.2;
FX = (1 - exp(-lambda*d))

plot(d,FX)

# fare il grafico della funzione di densità

fx = lambda*exp(-lambda*d)
plot(d,fx)

# Es. 4
si <- c(1:6, 5:1)

# mean
mu <- 0
for (i in 2:12){
  mu <- mu + i*si[i-1]/36
}

# variance
va <- 0
for (i in 2:12){
  va <- va + (i^2)*si[i-1]/36
}
va <- va - mu^2

# F_x
F_x <- c()
for (i in 2:12){
  F_x <- c(F_x,si[i-1]/36)
}
F_x = cumsum(F_x) 

plot(2:12,F_x)
abline(a = 0.4,b = 0)


# Es. 8
u <- runif(1e5,min = 0, max = 1) # hist(u)
x <- acos(1 - 2*u)
hist(x, 50)

mean(x) - pi/2


# Es. 9
lambda <- 2
u <- runif(1e4,min = 0, max = 1) # hist(u)
x <- u^(-1/lambda)
hist(x, 50)

mean(x)
lambda/ (lambda-1)

# R - Es. 1
hist(rnorm(1000, 2, 1))
hist(rnorm(1000, 2, 2))
hist(rnorm(1000, 2, 4))
hist(rnorm(1000, 2, 6))

# ii)
x = seq(-4,4,by = 0.01)
plot(x,dnorm(x,0,1),type="l")
points(x,dnorm(x,0,2),type="l",col="red")


# R - Es. 2
# i)
X = rnorm(1000, 2, 1)
Y = rnorm(1000, 2, 2)
mean(X + Y) # 2+2
var(X + Y)  # 1+2^2

# ii)
quantile(X,0.25)
quantile(X,0.5)
quantile(X,0.75) 
quantile(X) 

# iii)
# F_X(b) - F_X(a)
pnorm(5,2,1)- pnorm(-1,2,1)

# R - Es. 3
# i)
X = rnorm(10000, 2, 1)
Y = rnorm(10000, 2, 2) + X
mean(X + Y) # 2+4
var(X + Y) # 1^2 + 1^2 + 2^2 + 2*cov(X,Y)


# R - Es. 4
hist(rexp(1000, 1))
hist(rexp(1000, 3))
hist(rexp(1000, 9))
hist(rexp(1000, 10))

mean(rexp(1000, 2)) # 1 / lambda
var(rexp(1000, 2)) # 1 / lambda^2


