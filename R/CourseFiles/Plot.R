# File:   Plot.R
# Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

head(iris)

# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()

# in dataframe "iris" plot the categorical variable "species"
plot(iris$Species)

# ditto but quantitative variable "petal.length"
plot(iris$Petal.Length)
#know we have 3 separate groups and the scatter plot shows this too

# ditto but cat x quant
#knows that most commonly, this is a box plot so plotted that for us
plot(iris$Species, iris$Petal.Width)

# Quant pair
plot(iris$Petal.Length, iris$Petal.Width)  
#proper scatterplot,strong association between petal length nd width

# Entire data frame
plot(iris)  
#provides a matrix of all the quantitatives bt

# Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
  col = "#cc0000",  # Hex code for datalab.cc red
  pch = 19,         # Use solid circles for points
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width")

# PLOT FORMULAS WITH PLOT() ################################

#cosine formula with 0-2pi range)
plot(cos, 0, 2*pi)

#exponential curve
plot(exp, 1, 5)

#density of a normal distribution
plot(dnorm, -3, +3)

# Formula plot with options
plot(dnorm, -3, +3,
  col = "#cc0000",
  lwd = 5,
  main = "Standard Normal Distribution",
  xlab = "z-scores",
  ylab = "Density")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
