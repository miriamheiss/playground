f <- function(x) {
  x^2 - 5*x + 6
}

g <- function(x) {
  f(x) + 5 
}

g(3)

g(f(f(f(3))))
f(0)

library(tidyverse)


ggplot() +
  geom_function(fun = f) +
  xlim(-10, 10) +
  geom_hline(yintercept = 0)+
  geom_vline(xintercept = 0)

h <- function(x) {
  x^6
}

o <- function(x) {
  2*x + 3
}

ggplot() +
  geom_function(fun = h)+
  geom_function(fun = o)+
  geom_hline(yintercept = 0)+
  geom_vline(xintercept = 0)+
  xlim(-15, 15)+
  ylim(-100, 100) 
  
