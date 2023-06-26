# -------------------------------------------
# Es. 1

Dtot = 181.2
Dres = 33.9

#i
R2 = 1 - Dres/Dtot

#ii
r = sqrt(R2)

#ii
# Non cambia

# -------------------------------------------
# Es. 2
n = 6
b0 = 1.4381
b1 = 0.30714

std_b0 = 0.62459 # std campionaria
std_b1 = 0.02063 # std campionaria

#i
dof = n-2

# ii: IC(b1)
g = 0.95
q1 = qt((1-g)/2,dof)
IC_b1 = b1 + c(+1,-1)*q1*std_b1

#iii: IC(b0)
g = 0.95
q1 = qt((1-g)/2,dof)
IC_b0 = b0 + c(+1,-1)*q1*std_b0

T = 2.30
pValue = 2*pt(-T,n-2)

#iv: Test(b1)
alpha = 0.05
q1 = qt(alpha,dof)
T = (b1 - 0.40)/std_b1
pValue = pt(T,n-2)

# -------------------------------------------
# Es. 3

x = c(2.52,2.87,3.05,3.43,3.68,3.76,3.76,4.50,4.50,5.26)
y = c(54.74,59.01,72.92,50.85,54.99,60.56,69.08,77.03,69.97,90.70)

n = length(x);

#i 
model = lm(y ~ 1 + x)
summary(model)

#ii
yHat = predict(model);
s2 = sum((y - yHat )^2)/(n-2)
s = sqrt(s2)

# sqrt(s2 / sum((x - mean(x))^2))


#iii: IC(b1)
g = 0.95
b1 = 11.022;
std_b1 = 3.445;

q = qt((1-g)/2,n-2)
IC_b1 = b1 + c(+1,-1)*q*std_b1

#iv: IC(u(x))
xnew = data.frame(x = 4)
yhat = predict(model,newdata = xnew)

xbar = mean(x);
xdev = sum((x - xbar)^2)
sigma2_u = s2 *(1/n + (xbar-xnew$x[1])^2/xdev);

g = 0.95
q = qt((1-g)/2,n-2)
IC_u = yhat + c(+1,-1)*q*sqrt(sigma2_u)

#v) Test u(x)
alpha = 0.05
q = qt(1-alpha,n-2)
T = (yhat - 60)/sqrt(sigma2_yHat)
pValue = 1 - pt(T,n-2)

#vi: IC previsione
g = 0.95
q = qt((1-g)/2,n-2)
sigma2_yHat = s2 *( 1 + 1/n + (xbar-xnew$x[1])^2/xdev);
IC_yHat = yhat + c(+1,-1)*q*sqrt(1 + sigma2_yHat)

# -------------------------------------------
# Es. 4
sum_x = 185.1;
sum_y = 1284
sum_xi2 = 5914
sum_yi2 = 222008
sum_xiyi = 25300

n = 8

#i 
x_bar = sum_x/n
y_bar = sum_y/n

dev_x = sum_xi2 - 2*x_bar*sum_x + n*x_bar^2
cov_xy = sum_xiyi - y_bar*sum_x - x_bar*sum_y + n*x_bar*y_bar

b1 = cov_xy/dev_x
b0 = y_bar - b1*x_bar

#ii: IC(b0), Test(b1)
SSE = 4016.5
s2 = SSE/(n-2)

g = 0.95
q = qt((1-g)/2,n-2)
var_b0 = s2 * sum_xi2 / (dev_x*n)
IC_b0 = b0 + c(+1,-1)*q*sqrt(var_b0)

alpha = 0.05
q = qt(alpha/2,n-2)
var_b1 = s2/dev_x
T = (b1 - 0)/sqrt(var_b1)

#iii
Dtot = sum_yi2 - 2*y_bar*sum_y + n*y_bar^2
R2 = 1 - SSE/Dtot 


# -------------------------------------------
# Es. 5

x = c(-30,-20,-10, 0, 10, 20, 30, 60)
y = c(100, 90, 88, 82, 81, 81, 80, 71)

n = length(x)

#i
model = lm(y ~ 1 + x);
summary(model)

#ii
# Ovvio, basta vedere il pValue associato a b1. p-value = 0.0006
# Rifiuto l'ipotesi nulla: b1 = 0, a favore dell'alternativa b1 != 0.


#iii
xnew = data.frame(x = 40)
yhat = predict(model,xnew)

#iv 
Dtot = sum((y - mean(y))^2)

xnew = data.frame(x = x)
yhat = predict(model,xnew)

Dres = sum((y - yhat)^2)
r2 = 1 - Dres/Dtot
