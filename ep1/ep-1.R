# scales::percent

library(scales)
percent(0.1)
percent(c(0.1, 0.9))

# the second thing: ggplot2::labs

library(ozbabynames)
library(tidyverse)

ozbabynames

ozbabynames %>%
  filter(name == "Nicholas") %>%
  ggplot(aes(x = year,
             y = count)) + 
  geom_line() +
  labs(x = "Year",
       y = "Count",
       title = "The number of times 'Nicholas' occurs in Australia",
       subtitle = "From 1950 - 2017")
