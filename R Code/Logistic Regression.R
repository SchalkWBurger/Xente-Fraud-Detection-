model <- glm(FraudResult ~ ., family = binomial(link = 'logit'), data = training)
summary(model)
pred <- predict(model, training)
conf <- table(training$FraudResult, pred)
View(conf)
accs <- sum(diag(conf))/sum(conf)
accs