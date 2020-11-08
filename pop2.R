pop <- 100 #population
K <- 1000 #carrying capacity
pop.hist <- c()
r <- 0.05 #maximum growth rate per timestep

for (i in 1:150) {
	pop.hist[i]<-pop
  #Ricker model
  pop = pop*exp(r*(1-(pop/K)))
}

plot(pop.hist)
