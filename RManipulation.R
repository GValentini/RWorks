### Count the number of unique countries in the df data frame.
library(dplyr)

df %>% 
    summarize(nb_country = n_distinct(country))
    
