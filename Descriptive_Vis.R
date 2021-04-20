airquality <- datasets::airquality
view(airquality)
head(airquality,10)
tail(airquality,5)
data <- data.frame(x=rnorm(100), y=runif(100))
head(data,10)
data
summary(airquality[,1])
airquality$Wind
summary(airquality$Wind)
summary(airquality)
# Visualization #

#Scatter plot
plot(airquality$Wind)
plot(airquality$Wind, airquality$Temp, type = "p") # p=points, l=lines, b=both
plot(airquality)

plot(airquality$Wind, type = "l")
plot(airquality[,])

plot(airquality$Wind, xlab = 'Ozone Concentration', ylab = 'No. of instances',
     main = 'Ozone level in NY city', col = 'red')

# Horizontal Bar Plot
barplot(airquality$Ozone, main = 'Ozone Concentration', xlab = 'solar rad',
        ylab = 'Frequency', col = 'blue', horiz = F)

# Histogram
hist(airquality$Temp)
hist(airquality$Temp, col = 'purple')

# Single BOxplot
boxplot(airquality$Wind, main = 'Boxplot')

# Multiple Boxplots

boxplot(airquality[,1:4], main = 'Multiple')

par(mfrow=c(3,3), mar=c(2,5,2,1), las = 0, bty = 'o')
