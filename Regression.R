### Multiple and Logistic Regression in R
ggplot(nyc, aes(y = Price, x = Food, color = as.factor(East))) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
  
# 3D Visualization
p <- plot_ly(data = nyc, z = ~Price, x = ~Food, y = ~Service,
             opacity = 0.6) %>%
  add_markers() %>%
  add_surface(x = ~x, y = ~y, z = ~plane, showscale = FALSE)
              
# Define a model 'mod' where 'Price' is the response variable and 'Food', 'East' and the interaction term between them are the explanatory variables
# Then use the model to obtain the fitted values 
mod <- lm(Price ~ Food + as.factor(East) + Food:as.factor(East), nyc)

fitted_Price <- predict(mod)
