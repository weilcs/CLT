library(fBasics)
set.seed(1)
simu = function(sample_size = 20, repeat_time = 10){
  sample_mean = c()
  lambda = c(0,1,2,3,4)
  for (i in 1:repeat_time){
    sample_mean[i] = mean(rexp(sample_size))
  }
  return (sample_mean)
}

sample_size = 20
repeat_time = 1000
sample_mean = simu(sample_size, repeat_time)

hist(sample_mean)
jarqueberaTest(sample_mean)
#jarque.bera.test(sample_mean)


