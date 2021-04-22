library(dplyr)
library(nycflights13)
dim(flights)  # to know the dimensions
flights
head(flights,10)
flights <- flights

#Filter, Arrange, Select(to select columns), Mutate(to add columns), 
#Sample(select rows)

filter(flights, month ==1, day ==1, dep_delay ==2)


arrange(flights, year, day, month)


arrange(flights, desc(arr_delay))


select(flights, year, month, day)
flights[1:5,1:3]



select(flights, -(year:day))


new_data <- mutate(flights,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60)
new_data       

mutate(flights,
       gain = arr_delay - dep_delay,
       gain_per_hour = gain / (air_time/60))


sample(flights,10)

sample_frac(flights, 0.00001)       
