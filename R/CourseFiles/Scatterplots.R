# File:   Scatterplots.R
# Course: R: An Introduction (with RStudio)

# common bivariate distributions
# association between 2 quant variables
# is more flexible but usual case :)
# since a lot of procedures assume linearity, want to confirm that
# check spread - consistent? if fanning out, you get heteroscedasticity and create complications
# outliers - ofc
# correlation - actual association?

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

?mtcars
head(mtcars)

# PLOTS ####################################################

# check univariate distributions

hist(mtcars$wt) #not terrible, on the high end though
hist(mtcars$mpg) # mostly normal but ditto

# Basic X-Y plot for two quantitative variables 
# (R knows that they're quant so it went for a scatterplot)
plot(mtcars$wt, mtcars$mpg)
# one circle for each car, strong downhill pattern
# the more a car weighs, the lower the mpg

# Add some options
plot(mtcars$wt, mtcars$mpg,
  pch = 19,         # Solid circle
  cex = 1.5,        # Make 150% size
  col = "#cc0000",  # accepts hex this is red
  main = "MPG as a Function of Weight of Cars",
  xlab = "Weight (in 1000 pounds)",
  ylab = "MPG")
# everything else is obvious, not inclined to explain here
# but for the other plotting symbol options: http://www.sthda.com/english/wiki/r-plot-pch-symbols-the-different-point-shapes-available-in-r


# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
