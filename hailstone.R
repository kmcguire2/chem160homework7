#Initialize a vector to contain the sequence lengths
seqlen = c()

#Start a for loop over the values 1 to 1000
for (i in 1:1000) {
  #Set the variable n to the value of the loop variable (n=i)
  n = i
  #Set a variable counter equal to 1
  counter = 1
  #Start a while loop with the condition n not equal to 1
  while (n != 1) {
    #Inside the while loop test to see if n is even, if so, replace n by n/2
    if (n%%2 == 0) {
      n = n/2
    }
    #If n is odd, replace n by 3*n+1
    else {
      n = 3*n + 1
    }
    #Increment the counter by 1
    counter = counter + 1
  } #End the while loop
  
  #Put the counter value into the next location in the vector of sequence lengths
  seqlen[i] = counter 
} #End the for loop

#Plot the vector of sequence lengths (plot(seqlen))
main = "Number of Values in the Hailstone Sequence vs Starting Value"
xlab = "Starting Value"
ylab = "Number of Values in Hailstone Sequence"
plot(seqlen, main = main, xlab = xlab, ylab = ylab)