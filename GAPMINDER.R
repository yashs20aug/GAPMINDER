# Learning Dataframe Manipulation Using TidyVerse and Visualization Using GGplot2
# Load the gapminder package
library(gapminder)
library(dplyr)
library(ggplot2)

# Look at the gapminder dataset
summary(gapminder)
str(gapminder)

# Filter the gapminder dataset for the year 1957
gapminder %>% filter(year==1957)

# Filter for China in 2002
gapminder%>% filter(country=="China",year==2002)

# Sort in ascending order of lifeExp
gapminder%>%arrange(lifeExp)


# Sort in descending order of lifeExp
gapminder%>%arrange(desc(lifeExp))

# Filter for the year 1957, then arrange in descending order of population
gapminder%>%filter(year==1957)%>%arrange(desc(pop))

# Use mutate to create a new column called lifeExpMonths
gapminder%>%mutate(lifeExpMonths=lifeExp*12)

# Filter, mutate, and arrange the gapminder dataset
gapminder%>%filter(year==2007)%>%
  mutate(lifeExpMonths=lifeExp*12)%>%
  arrange(desc(lifeExpMonths))

# Create gapminder_1952
gapminder_1952<-gapminder%>%filter(year==1952)

ggplot(gapminder_1952, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()