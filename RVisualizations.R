library(dplyr)
library(ggplot2)

### 1 - Plot a Pie Chart of the number of cars by carburetors
table(mtcars$carb)
sort(mtcars$carb)

# In order to get a Stacked Barplot you first need to group data!
mydf <- mtcars %>% group_by(carb) %>% summarise(num_of_cars = n())
mydf
# Now you can plot a right stacked barplot
bplt <- ggplot(data = mydf, aes(x = 1, y = num_of_cars, fill = carb)) + geom_bar(stat = "identity")
print(bplt)
# And finally to obtain a Pie Chart
bplt + coord_polar(theta = "y") + scale_fill_fermenter(palette = 4)


### 2 - Plot a Waffle Chart of the variable cylinders from the built-in dataset mtcars
library(waffle)
table(mtcars$cyl)
parts <- c("4cyl" = 11, "6cyl" = 7, "8cyl" = 14)
waffle(parts = parts, rows = 4, xlab = "1sq = 1 car")
