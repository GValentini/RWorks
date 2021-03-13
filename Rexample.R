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
