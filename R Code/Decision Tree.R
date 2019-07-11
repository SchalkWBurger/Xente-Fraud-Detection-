model <- rpart(formula = FraudResult ~ ., data = training)
pred <- predict(model, training)
conf <- table(training$FraudResult, pred)
View(conf)
accs <- sum(diag(conf))/sum(conf)
accs