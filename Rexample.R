# To make it easier to read the axis labels on the x-axis of your graphic it would be better for them to be rotated by 20 degrees.
ggplot(tools, aes(Week, Searches, group = Tool)) +
  geom_line()  +
  theme(axis.text.x = element_text(angle = 20))

# The avocado data frame contains the AveragePrice for avocados over four years from 2015 to 2018 from four regions.
# Code to create a heatmap of the data.
ggplot(avocado, aes(year, region, fill = AveragePrice)) + geom_tile()

# Use a violin plot to compare the pH values of wines in different quality groups.
ggplot(wine, aes(factor(quality), pH)) + 
  geom_violin() +
  labs(x = "quality", y = "pH")

# The temp data, previewed below, records the average temperature for each of five cities across the year.
# Create a plot to show the temp for each month and city.
ggplot(city_temp, aes(month, city, fill = temp)) + 
    geom_tile() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Add the text "AVG" to the plot near the new point to make it clear that the new point represents the average.
highlight_avg <- fleet %>% 
				 summarize(miles=mean(miles), cost=mean(cost))

p <- ggplot(fleet, aes(x = miles, y = cost)) + 
        geom_point(position = "jitter") + 
        labs(y = "Cost per Mile ($)", x = "Miles driven per month") +
	      geom_point(data = highlight_avg, aes(miles, cost), color = "red", size =  6)

p +	annotate('text', 
               x = highlight_avg$miles, 
               y = highlight_avg$cost, 
               label = 'AVG', size = 6, vjust = -1)

# You have created a graphics object for you plot of number of searches over time for four different graphics tools.
# Save a pdf version of this plot to the working directory.
p <- ggplot(tools, aes(Week, Searches, group = Tool)) + geom_line()

ggsave("searches_by_tool.pdf", p, device = "pdf")

