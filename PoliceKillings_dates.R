library(tidyverse)
library(readxl)


df <- read_excel("PoliceKillings.xlsx", 
                             col_types = c("text", "text", "text", 
                                           "text", "text", "date", "text", "text", 
                                           "text", "numeric", "text", "text", 
                                           "text", "text", "text", "text", "text", 
                                           "text", "text", "text", "text", "text", 
                                           "text", "text", "numeric", "text", 
                                           "text", "numeric", "numeric", "numeric", 
                                           "text", "text", "text", "text", "numeric", 
                                           "text"))

df$date <-as.Date(df$`Date of Incident (month/day/year)`, format = "%m/%d/%y")

which(df$date > "2017-02-02")

