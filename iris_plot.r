library(ggplot2)
library(dplyr)

data(iris)

ggplot(iris, aes(x= Petal.Length, y= Petal.Width, fill=Species)) +
  geom_point(alpha = 0.7, shape = 21) +
  labs(x = "Petal length (cm)",
       y= "Petal Width (cm)",
       title= "Petal width against length by species",
       subtitle = "Points show data lines show the trends of the flowers") +
  theme_bw() +
  geom_smooth(aes(colour= Species))
