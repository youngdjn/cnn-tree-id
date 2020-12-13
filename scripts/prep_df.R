library(tidyverse)

d = read_csv("tree_labels.csv")

d = d %>%
  mutate(sp = recode(sp_code,
                     p = "ponderosa",
                     i = "cedar",
                     w = "fir",
                     u = "unknown",
                     s = "sugar")) %>%
  mutate(filename = paste0(tree_id %>% str_pad(4, side="left",pad="0"), ".jpg"))

write_csv(d,"tree_labels.csv")
