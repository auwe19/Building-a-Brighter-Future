# Create vector of 100 numbers
vector <- rnorm(100)

# Create a data frame with 'N' observations of 'vector'
df <- data.frame(N = c(1:100), vector = vector)

# Create a summary of the data frame
summary <- summary(df)

# Plot the vector
plot(vector, main="Vector Plot")

# Create a histogram of the vector
hist(vector, main="Histogram of Vector")

# Create a correlation matrix of the data frame
cor_mat <- cor(df)

# Create a linear regression model of the data frame
model <- lm(vector ~ N, data=df)

# Create a summary of the model
summary(model)

# Store the coefficients of the model
model_coefficients <- coef(model)

# Use the stored coefficients to make predictions
predictions <- predict(model, newdata=df)

# Store the residuals of the model
residuals <- resid(model)

# Calculate the mean square error of the model
mean_sq_error <- meanSquareError(model)

# Create a graph of the model
plot(model, main="Linear Regression Model")

# Create a graph of the residuals
plot(residuals, main="Residuals of Model")

# Create a function to calculate the cost of a given linear model
calculateCost <- function(model) {
  mean_sq_error <- meanSquareError(model)
  return (mean_sq_error)
}

# Use the calculated cost to compare different models
compare <- function(model1, model2) {
  cost1 <- calculateCost(model1)
  cost2 <- calculateCost(model2)
  message("Model 1 MSE: ", cost1)
  message("Model 2 MSE: ", cost2)
  if (cost1 < cost2) {
    message("Model 1 is more accurate than Model 2.")
  } else if (cost2 < cost1) {
    message("Model 2 is more accurate than Model 1.")
  } else {
    message("Model 1 and Model 2 are equally accurate.")
  }
}

# Create a logistic regression model
log_model <- glm(vector ~ N, data=df, family="binomial")

# Create a summary of the logistic regression model
summary(log_model)

# Compare the accuracy of the linear and logistic model
compare(model, log_model)

# Create a chart of the model
plot(log_model)

# Create a confusion matrix
conf_mat <- confusionMatrix(log_model)

# Create a matrix of the fitted probabilities
predict_mat <- predict(log_model)

# Calculate the ROC
roc <- roc(log_model)

# Create a graph of the ROC
plot(roc, main="ROC Curve")

# Perform a cross-validation of the logistic model
cv_log_model <- cv.glm(log_model)

# Show the results of the cross-validation
summary(cv_log_model)

# Create a new optimized model
log_model_opt <- glm(vector ~ N, data=df, family="binomial", lambda=cv_log_model$lambda.min)

# Compare the models again
compare(log_model, log_model_opt)

# Split the data into a training and a test set
ind <- sample(2, nrow(df), replace=T, prob=c(0.7,0.3))
train <- df[ind==1,]
test <- df[ind==2,]

# Create a new optimized model with training set
log_model_opt2 <- glm(vector ~ N, data=train, family="binomial", lambda=cv_log_model$lambda.min)

# Predict the values of the test set
predicted_values <- predict(log_model_opt2, newdata=test, type="response")

# Create a prediction matrix
pred_mat <- predictionMatrix(log_model_opt2, newdata=test, type="response") 

# Calculate the accuracy of the model
accuracy <- accuracyMatrix(pred_mat) 

# Output the accuracy
message("Accuracy of the model: ", accuracy)

# Create an ROC for the model
roc2 <- roc(log_model_opt2, test)

# Plot the new ROC
plot(roc2, main="ROC Curve for Model with Test Set")

# Create a survival analysis
time <- rnorm(100, mean=12, sd=2)
survival <- with(df, Surv(time, vector))

# Create the survival model
surv_model <- Surv(time, vector)

# Create a summary of the survival model
summary(surv_model)

# Fit a Cox Proportional Hazards Model
cox_model <- coxph(surv_model ~ N, data=df)

# Create a summary of the Cox Proportional Hazards Model
summary(cox_model)

# Plot the Cox Proportional Hazards Model
plot(cox_model, main="Cox Proportional Hazards Model")

# Create a linear discriminant analysis
lda_model <- lda(vector ~ N, data=df)

# Create a summary of the model
summary(lda_model)

# Create a graph of the model
plot(lda_model, main="LDA Model")

# Create a quadratic discriminant analysis
qda_model <- qda(vector ~ N, data=df)

# Create a summary of the model
summary(qda_model)

# Create a graph of the model
plot(qda_model, main="QDA Model")

# Compare the accuracy of the LDA and QDA
compare(lda_model, qda_model)

# Create a K-means Clustering model
kmeans_model <- kmeans(df, centers=2)

# Create a summary of the model
summary(kmeans_model)

# Create a graph of the model
plot(kmeans_model, main="K-Means Clustering Model")

# Create a neural network
input_nodes <- dim(df)[2]
output_nodes <- 1
nn_model <- neuralnet(vector ~ N, data=df, hidden=c(input_nodes, output_nodes),
                      linear.output=TRUE)

# Create a summary of the model
summary(nn_model)

# Create a graph of the model
plot(nn_model, main="Neural Network Model")

# Input the predicted values into the neural network
predicted_values_nn <- compute(nn_model, df)

# Output the predicted values
message("Predicted values using neural network: ", predicted_values_nn$net.result)

# Output the accuracy
message("Accuracy of neural network: ", nn_model$result.matrix$rsq)

# Calculate the mean of the vector
mean <- mean(vector)

# Calculate the standard deviation of the vector
sd <- sd(vector)

# Create a vector of 1000 numbers with the same mean and standard deviation
vector2 <- rnorm(1000, mean=mean, sd=sd)

# Create a data frame with 'N' observations of 'vector2'
df2 <- data.frame(N = c(1:1000), vector2 = vector2)

# Calculate the mean of the vector2
mean2 <- mean(vector2)

# Compute the difference of the two means
difference <- mean - mean2

# Output the difference
message("Difference of the two means: ", difference)

# Create a graph of the two vectors
# Set up the graph
par(mfrow=c(2,1))

# Plot vector
plot(vector, main="Vector Plot")

# Plot vector2
plot(vector2, main="Vector2 Plot")

# Output message
message("Building a Brighter Future")