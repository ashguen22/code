library(tidyverse)

# Had a great meal at a Cuban restaurant.

hist_p <- ggplot(data = diamonds,
                 mapping = aes(x = carat)) +
  geom_histogram(bins = 100,
                 color = "white") +
  scale_y_continuous(labels = scales::comma_format()) +
  labs(title = "Histogram of Carat (Weight) among 50,000 Diamonds",
       subtitle = "Carats just at or above meaningful numbers are very common",
       x = "Carat",
       y = "Number",
       caption = "diamonds dataset from ggplot2 package")

ggsave(plot = hist_p, file = "diamonds.png", width = 12, height = 7.5)

hist_p
