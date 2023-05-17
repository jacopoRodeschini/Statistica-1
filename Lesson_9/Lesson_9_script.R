# -------------------------------------------
# Es. 1
n = 1000
dif = 36
pi = 36/1000
s2 = pi*(1-pi)

#i) IC(pi)
g = 0.95
q = qnorm(1-g)
ICpi = pi - q * sqrt(s2/n)

#ii)
alpha = c(0.05, 0.01)
q = qnorm(alpha)
pi0 = 0.05
T = (pi - pi0)/sqrt((pi0*(1 - pi0)/n))

# -------------------------------------------
# Es. 2
xa = c(17.3, 9.4, 4.0, 12.5, 11.4, 13.8)
xb = c(17.1, 9.7, 3.9, 12.5, 11.2, 13.6)

xd = xa - xb; 
xm = mean(xd)
s2 = var(xd)
n = length(xd)

alpha = 0.05
T = (xm - 0)/sqrt(s2/n)
q1 = qt(alpha/2,n-1)
pValue = 2*pt(-T,n-1)

t.test(xd,alpha = 0.05,alternative = "two.sided")

# -------------------------------------------
# Es. 3
x1 = 12.5
x2 = 11.9
s2_1=2.1^2
s2_2=2.2^2

n1 = 64
n2 = 100

alpha = 0.05
q = qnorm(alpha/2)
T = (x1 - x2)/sqrt(s2_1/n1 + s2_2/n2)
pValue = 2*pnorm(-T)

# -------------------------------------------
# Es. 4
xa = c(8.4, 4.4, 3.8, 6.1, 4.7, 11.2, 3.8)
xb = c(7.0, 7.5, 3.2, 8.4, 9.6, 11.6, 13.0, 10.4)

n = length(xa)
m = length(xb)

s2_a = var(xa)
s2_b = var(xb)

s2_s = (s2_a*(n-1)+s2_b*(m-1))/(n+m-2)


alpha = 0.05
q = qt(alpha/2,n+m-2)
T = (mean(xa) - mean(xb))/(sqrt(s2_s/n + s2_s/m))

# -------------------------------------------
# Es. 5
sigma = 2
n = 9
IClower = 98.5
ICupper = 101.5

#i)
q2 = (ICupper - IClower)*sqrt(n)/(sigma*2)
alpha = 2*(1 - pnorm(q2))

#ii)
u0 = seq(90,110,0.1)
pT = pnorm((98.5 - u0)/(2/3)) + (1 - pnorm((101.5 - u0)/(2/3))) 
plot(u0,pT)

u0 = 103
pT = pnorm((98.5 - u0)/(2/3)) + (1 - pnorm((101.5 - u0)/(2/3)))

# -------------------------------------------
