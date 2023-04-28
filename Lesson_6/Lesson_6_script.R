#ES. 6 v.a. Continue

# Es. 2
mu = 4
std = sqrt(6)

#i) 
pnorm(8,mean = mu,sd = std) - pnorm(2,mean = mu,sd = std)
pnorm((8-mu)/std) - pnorm((2-mu)/std)

#ii)
1 - pnorm((7 - mu)/std)

#iii) 
pnorm((3 - mu)/std)
pnorm(3,mu,std)

#iv)
1 - pnorm(1,mu,std) + pnorm(-1,mu,std)


## Es. 3
x = rnorm(1e3,3,2)
alpha = 1/(2*qnorm(0.4) + 3)
# alpha = 1/qnorm(0.4,3,2)
y = alpha*x
hist(y)
mean(y) # alpha*3
var(y) # alpha^2*2^2

# check
1 - pnorm(1, alpha*3,alpha*2)

# Es. 4
#i)
xa = 2*qnorm(0.15)+5
pnorm(xa,5,2)

#ii)
c = -2*qnorm(0.3)
#c = 2*qnorm(0.7)

# check 
pnorm(-c,0,2) + 1 - pnorm(c,0,2)
1 - pnorm(c+5,5,2) + pnorm(-c+5,5,2)

#Es. 5
pnorm((15-10)/sqrt(10)) - pnorm((2-10)/sqrt(10)) 
# Correzione di continuità
pnorm((15+0.5-10)/sqrt(10)) - pnorm((2+0.5-10)/sqrt(10)) 
sum(dpois(3:15,10))

#Es. 6
ps = pexp(12,rate=1/10)
# 1 - exp(-12/10)

#i)
dbinom(0,6,ps)

#ii)
sum(dbinom(0:2,6,ps))

#Es. 7
#i)
pexp(10,rate = 1/5)
# 1 - exp(-10/5)

#ii)
1 - sum(dpois(0:2,10/5))

#iii)
1 - pgamma(10,2,1/5)

# Es. 8
1 - pgamma(48,2,1/15)
1 - sum(dpois(0:1,12/15))
