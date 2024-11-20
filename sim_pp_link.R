library(tidyverse)

# Sim original categorization task 

i = 1 

rep = rep(c(1:5), times = 3)
vowel_played = rep(c("i", "u", "y"), times = 5)
vowel_chosen_no = rbinom(n = 15, size = 1, prob = .5) # probabliy of i 


dfs = data.frame(rep, vowel, vowel_chosen_no) %>% 
  mutate(vowel_chosen = ifelse(vowel_chosen_no == 1, "i", "u")) %>% 
  mutate(ppt = i)


