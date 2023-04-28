## Es 5, Variabili causli DISCRETE

# Es. 1
# i) 
p = dbinom(3,150,0.01)/2 + dbinom(3,150,0.05)/2

# ii) 
dbinom(3,150,0.01)/(2*p)


## Es. 2
#i) 
1 - sum(dbinom(0:18,20,1 - 0.1))
#ii)
1 - sum(dbinom(0:94,100,1-0.1))
1 - pbinom(94,100,1-0.1)
# Approssimazione Normale
mu = 100*(1 - 0.1)
sigma2 = 100*0.9*0.1
1 - pnorm((94-mu)/sqrt(sigma2))
# (*) con correzione di continuità
1 - pnorm((94+0.5-mu)/sqrt(sigma2))
(0.066 - 0.057)/0.057

## Es. 3
p1 = dbinom(11,11,0.9) #(*) 1 - sum(dbinom(0:10,11,0.9))
p2 = dbinom(21,22,0.9)+dbinom(22,22,0.9) # (*) 1 - sum(dbinom(0:20,22,0.9))


## Es. 4
#i)
dnbinom(1,1,1/5) # dgeom(1,1/5)

#ii)
qnbinom(1/2,1,1/5)+1 # qgeom(1/2,1/5) + 1
#n = 4; 
#sum(dnbinom(0:3,1,1/5))

## Es. 5
qnbinom(0.9,1,1/2)+1

## Es. 7
#1 - dhyper(0,20,380,5)
1 - choose(20,0)*choose(380,5)/choose(400,5)

## Es. 9 
#i)
dpois(0,5/2)
exp(-5/2)

#ii)
dpois(0,15/2)
exp(-15/2)

#iii)
1 - sum(dpois(0:1,5/2))

#Es. 10
#i) 
dpois(0,2/7)
exp(-2/7)

#ii)
t = -log(0.05)/(2/7)

#Es. 11
p = 1 - sum(dpois(0:1,1))
1 - sum(dbinom(0:2,5,1-p))

#Es. 12
dpois(0,0.6)
1 - dpois(0,0.6)
sum(dpois(0:2,0.6))# sum(dbinom(0:2,1000,0.0006))

#Es. 13
#i)
dnbinom(3,1,1/6) #dgeom(3,1/6)

#ii)
sum(dnbinom(0:2,1,1/6))
sum(dgeom(0:2,1/6))

#iii)
1 - sum(dgeom(0:5,1/6))

#Es. 14
p = 3/10;
dnbinom(3,4,p)/dbinom(4,7,p)


#Es. 15
#i)
dnbinom(2,3,6/10)

#ii)
sum(dnbinom(0:2,3,6/10))

# Es. 16
#i) hyprergeometrica
p = choose(6,2)*choose(9,1)/choose(15,3)+ choose(5,2)*choose(10,1)/choose(15,3) +choose(4,2)*choose(11,1)/choose(15,3)
# ii) 
1 - sum(dbinom(0:14,30,p))
# approssimazione normale
1 - pnorm((14+0.5-30*p)/sqrt(30*p*(1-p)))
