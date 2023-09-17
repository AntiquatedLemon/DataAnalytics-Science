# File:   BarCharts.R
# Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################

library(datasets)

# LOAD DATA ################################################

?mtcars
head(mtcars)

# BAR CHARTS ###############################################

barplot(mtcars$cyl)             
# Doesn't work - going through the each case and telling us how many cylinders in each case

# Reform to summary table, same for excel and sheets
# Need a table with frequencies for each category
cylinders <- table(mtcars$cyl)  # Create table
barplot(cylinders)
#now showing the frequency of 4, 6 and 8 cylinders

plot(cylinders)
# Default X-Y plot (lines), same thing but the using lines so it's thinner than desired for visual clarity

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
