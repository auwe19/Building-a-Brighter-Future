# Introducing our project

print("Welcome to Building a Brighter Future!") 

# Importing necessary modules

import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt

# Creating data

np.random.seed(2)
df = pd.DataFrame(np.random.randint(0,100,size=(100, 4)), columns=list('ABCD'))

# Exploring data

print(df.head())
print(df.describe()) 

# Visualizing data

plt.scatter(df['A'], df['B'])
plt.xlabel('A')
plt.ylabel('B')
plt.show()

plt.scatter(df['C'], df['D'])
plt.xlabel('C')
plt.ylabel('D')
plt.show()

# Building model

from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

X = df[['A', 'B']]
y = df['C']

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)

# Constructing the linear regression model

model = LinearRegression()

# Training the model

model.fit(X_train, y_train)

# Predictions

predictions = model.predict(X_test)

# Evaluating the model

mse = mean_squared_error(y_test, predictions)

# Final thoughts

print("The mean squared error of our model is {:.2f}".format(mse)) 
print("We thank you for participating in Building a Brighter Future!")