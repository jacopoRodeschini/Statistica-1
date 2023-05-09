## Lesson 8

#----------------------------------------
# Es. 1
g = 0.95
n = 450
fav = 240

xm = fav/n
s2 = xm*(1 - xm)

#i)
q1 = qnorm((1-g)/2)
ICpi = xm +c(+1, -1)*q1*sqrt(s2/n)

#ii)
q1 = (1/2 - xm)/sqrt(s2/n)
g = 1 - pnorm(q1)
#----------------------------------------
# Es. 2

n = 100
uo = 170
xm = 171
s = 4
alpha = 0.01

#i)
T = (xm - uo)/(s/sqrt(n))
q1 = qt(alpha/2,n-1)
# pValue = 2*pt(-T,n-1)

#ii)
q = qt(1 - alpha,n-1)
T = (xm - uo)/(s/sqrt(n))
# pValue = 1 - pt(T,n-1)

#----------------------------------------
# Es. 3
summErr2 = 146;
n = 25
s2 = summErr2/(n-1)

#i)
g = 0.95
q1 = qchisq(g,n-1)
ICs2 = (n-1)*s2/q1

#ii)
alpha = 0.05
xm = 21
T = (xm - 20)/sqrt(s2/n)
q1 = qt(alpha/2,n-1)
pValue = 2*pt(-T,n-1)

#----------------------------------------
# Es. 4
n = 10
xm = 113
s2 = 98

alpha = 0.01; #0.0012
T = (xm-100)/(sqrt(s2/n))
q1 = qt(1-alpha,n-1)
pValue = 1 - pt(T,n-1)

#----------------------------------------
# Es. 5
x = c(22, 16, 11, 17, 10, 18,12, 15, 8, 10)
xm = mean(x)
s2 = var(x)
n = length(x)

#i) IC(u)
g = 0.95
q1 = qt((1-g)/2,n-1)
ICu = xm +c(+1,-1)*q1*sqrt(s2/n)

#ii) IC(sigma); Test(sigma); Unilaterale
g = 0.90
q1 = qchisq(1-g,n-1)
ICs2Up = (n-1)*s2/q1 
ICsUp = sqrt(ICs2Up)

#iii) Test(u)
g = c(0.05, 0.01)
q1 = qt(g,n-1)
T = (xm - 16)/sqrt(s2/n)
pValue = pt(T,n-1)

t.test(x,alternative = "less",mu = 16,conf.level = 0.05)

#----------------------------------------
# Es. 6
n = 10
s2 = 37
s0 = 40
alpha = 0.05

q1 = qchisq(alpha/2,n-1)
q2 = qchisq(1-alpha/2,n-1)
V = (n-1)*s2/s0

#----------------------------------------
# Es. 7
mu = 1000
n = 10
sumXi = 9997
sumXi2 = 10000024

#i) (mu nota)
s2 = sumXi2/n - 2*mu*sumXi/n + mu^2

#ii)
alpha = 0.05
q = qchisq(alpha,n)
V = n*s2/(20)^2
pValue = pchisq(V,n)

#----------------------------------------
# Es. 8
x = c(5.0, 8.5, 12.0, 15.0, 7.0, 9.0, 7.5, 6.5, 10.5)
xm = mean(x)
s2 = var(x)
n = length(x)

#i) IC(u); Test(u)
g = 0.95
q1 = qt((1-g)/2,n-1)
ICu = xm + c(+1,-1)*q1*sqrt(s2/n)

q1 = qt((1-g)/2,n-1)
T = (xm - 11)/sqrt(s2/n)

#ii) Test(s2)
alpha = 0.05
q1 = qchisq(alpha/2,n-1)
q2 = qchisq(1 - alpha/2,n-1)
T = (n-1)*s2/5

#iii) IC(u), Test(u) - sigma nota. 
alpha = 0.05
q1 = qnorm(alpha/2)
ICu = xm +c(+1,-1)*q1*sqrt(5/n)

q2 = -q1
T = (xm - 11)/sqrt(5/n)
pValue = 2*pnorm(T)











