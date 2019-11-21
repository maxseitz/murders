library(tidyverse)
load("rda/murders.rda")
murders %>% mutate(abb = reorder(abb, rate)) %>% ggplot(aes(rate, abb)) + geom_bar(width = 0.5, stat = "identity", color = "black") + coord_flip()
ggsave("figs/barplot.png")