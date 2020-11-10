library(tidyverse)
library(magrittr)
library(lubridate)
library(stringr)
library(naniar)


# For the first vignette we will be looking at an example from a file of Nevada voters. Right from the start, we would see that there are some problems, the data is parsed over two files and the second file is long-form while the other is wide:
#   
#   To load the data, we’ll be using the read_csv() function from the readr package.
# 
# Readr gives you a lot more control over your data. Unless you are using .xlsx (my condolences, but also why?) for instance readr lets you parse the data from the start buth column specification:
#   
#   cols( firstname = col_character(), sex = col_character(), race = col_character(), call = col_double() )
# 
# Moreover, readr embeds a lot internal functionality:
#   
#   skip = 3(throw away the first three lines)
#   n_max = 10 (only read the first ten lines)
#   na = c(“8”, “9”, "") (specify missing data)
#   col_names = c(“year”, “grade”) (rename columns)

# Base R
df_1 <- read.csv("nevada_1.csv")
str(df_1); head(df_1)

tbl_1 <- read_csv("nevada_1.csv")[-1]

str(tbl_1); head(df_1)


class(df_1)
class(tbl_1)


tbl_2 <- read_csv("nevada_2.csv")

str(tbl_2); head(tbl_2)

# The output of readr is a tibble! 
# Tibbles are lazy and surly: they don’t change variable names or types
# and don’t do partial matching and they hate missing data. 
# This forces you to confront problems earlier and since we are always trying
# to stay on top of the bias we introduce when parsing data, this is exactly what we want.

# Simple Transformations

tbl_2 %<>% 

  pivot_wider(.,
            
            id_cols = "VoterID",
            
            names_from = "Election Date",
            
            values_from = "Vote Code")

# Revert Back to Original

tbl_2 %>%
  
  pivot_longer(.,
      
               !VoterID,
               
               names_to = "Election Date",
               
               values_to = "Vote Code") %>%
  head()


# Manipulate Dates with Lubridate


tbl_1 %<>%
  
  mutate(Birth.Date = mdy(Birth.Date),
         
         Registration.Date = mdy(Registration.Date))


# Merging your data

tbl <- 
  full_join(tbl_1,
                 tbl_2,
                 by = "VoterID")


# Basic Manipulation with dplyr/stringi/stringr

tbl %<>% 
  
  mutate(City =  tolower(City))


# stringr gives you more control over how you manipulate strings
# here we'll combine stringr with select (subset on columns)


tbl %>% 
  
  mutate(Address = str_to_title(Address.1)) %>%
  
  select(., Address) %>%
  
  head()

# Conversely, filter can be used to subset on rows and pass that object onto the next function

tbl %>%
  
  filter(., city == "las vegas") %>%
  
  head()


# Easy to extend with logical comparisons

cities <- c("las vegas", "henderson")

tbl %>%
  
  filter(., city %in% cities ) %>%
  
  head()


# Let's talk about the quintisential data cleaning problem NAs

tbl_ab <- read_csv("ab1.csv")

head(tbl_ab[,14:40], 5L)


tbl_ab %>%
  
  select(., 6:10) %>%
  
  vis_miss()

## Inspect Elements

tbl_ab %<>%
  
  select(., 6:10) %>%
  
  mutate_if(is.character, ~as.numeric(.)) %>%
  
  mutate_if(is.numeric, list(~na_if(., 8|9)))

  #alternative:   mutate(across(where(is.character), ~na_if(., 9)))
  
  
tbl_ab %>%
  
  vis_miss(.)
  

# Let's shift gears and talk a little more about strings

# remotes::install_github('EandrewJones/how2scrape', build_vignettes = TRUE)

congress <- how2scrape::df_bills

# Let's combine regular expressions and stringr to manipulate information from sponsors


# 1. Convert to Tibble
tbl_c <- 
  
  congress %>%
 
  tibble(.)

# 2. Look at the String

sponsorID <- tbl_c %>% 
  
  select(., sponsor) %>%
  
  head(., 10)

### Let's expound on this a little more ###

str_split(sponsorID[,1], "\\[|\\]") #use \\ to escape the [] and split
str_split(sponsorID[,1], "-") #Risky with nieve matching

# 3. Regular Expressions
tbl_d <- tbl_c # set checkpoint

tbl_d <- 
  
  tbl_d %>%
  
  separate(., 
           
           col = sponsor,
           
           into = c("name", "party", "stateID", "district"),
           
           sep =  "\\[|\\]|-" )

# Check your results!

tbl_d %>% select(., party) %>%
  
  distinct()

dev <- tbl_c[which(str_detect(tbl_c$sponsor, "Porter, Carol")),]

dev %>%
  
  select(., sponsor) %>%
  
  head()

# Restart with more selective parsing

tbl_c <- 
  
  tbl_c %>%
  
  separate(., 
           
           col = sponsor,
           
           into = c("name", "info"),
           
           sep =  "\\[|\\]" ) %>%
  separate(., 
           col = info, 
           
           into = c("party", "stateID", "district"),
           
           sep =  "-")

tbl_c %>% 
  
  select(., party) %>%
  
  distinct()


# My view? Take your time with parsing, saves you trouble later on.


