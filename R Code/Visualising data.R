summary(training)


ggplot2::ggplot(training, aes(x = FraudResult)) + 
  geom_histogram(stat = 'count') +
  stat_bin(bins = 2, aes(label = round((..count..)/sum(..count..), digits = 4)), geom = "text", size = 4) +
  ggtitle("Fraud Result Histogram")
  
