### Example 1

# A tibble: 3 x 3
  `Casino Royale` `Despicable Me` `Harry Potter`
            <dbl>           <dbl>          <dbl>
1              10               4              8
2               2               9              8
3               5               8              6

library(tidyr)

movie_reviews %>%  
	pivot_longer(everything(), 
               names_to = "movie", 
               values_to = "rating")

### Example 2

# A tibble: 5 x 3
  product      `Quarter 1` `Quarter 2` `Quarter 3` `Quarter 4`
  <chr>              <dbl>       <dbl>       <dbl>       <dbl>
1 Apples              1682         993        1203        1984
2 Bananas              852        1321         243        3427
3 Bread                192        1767        2853        1937

library(tidyr)
library(ggplot2)

fresh_produce %>% 
	pivot_longer(-Product, 
               names_to = "Quarter", 
               values_to = "Sales") %>%
	ggplot(aes(Product, Sales, fill = Quarter)) + 
	  geom_col(position = "dodge")
 
