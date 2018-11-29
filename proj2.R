library(fBasics)
set.seed(1)
## setting the parameters
lamda = 0.2
n = 40
sd = 1/lamda
mean = 1/lamda
## Simulating 1000 averages of 40 exponential variables 
## with lamda = 0.2 using for loop. 
mean_sample = NULL
for (i in 1:10000) mean_sample = c(mean_sample, mean(rexp(n, lamda)))
## CLT ==> mean_sample ~ N(mean, sd^2/n)
Theoretical_mean <- 1/lamda
Theoretical_var <- sd^2/n
sample_mean_mean <- mean(mean_sample)
sample_mean_var <- var(mean_sample)
hist(mean_sample, col="grey", main = "Sample Mean Vs. Theoretical Mean", prob=T)
curve(dnorm(x,5,1),col="blue",lty=2, lwd=2,add=T)
abline(v = sample_mean_mean, col = "green", lwd = 4)
abline(v=Theoretical_mean, col="red", lwd=2)
jarqueberaTest(mean_sample)
