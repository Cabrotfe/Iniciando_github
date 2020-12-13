
pacman::p_load(tidyverse,stringr, tidytext)

mtcars=mtcars

## Leseras para guardar

?unnest_tokens
tokens=mtcars %>% mutate(nombre = rownames(mtcars)) %>% tidytext::unnest_tokens(input=nombre,output="modelos",token = "words", drop = F)
glimpse(tokens)
tokens %>% count(nombre,modelos)

tokens %>% count(modelos) %>% ggplot(aes(x=modelos,y=n)) + geom_col() + coord_flip()


