# title: Chapter 2
# author: Smitom borah
# date: 01/08/2022

# class of cars
class(cars)

# typeof of cars
typeof(cars)

# names of column in cars
names(cars)

# summary of the data set
summary(cars)

# Details of an object
str(cars)

# If we create a factor for the speed variable by cutting it at its 
# quartiles, we can contrast how the plot method displays the relationship 
# between two numerical variables and a numerical variable and factor
cars$qspeed <- cut(cars$speed, breaks = quantile(cars$speed), include.lowest = T)
# check if factored
is.factor(cars$qspeed)

# plots
plot(dist ~ speed, data = cars)
plot(dist ~ qspeed, data = cars)

# dummy variables
lm(dist ~ qspeed, data = cars)
