# File:   Histograms.R
# Course: R: An Introduction (with RStudio)

# quantitative, scaled, measured, interval,ratio level
# get an idea of what is had
# Look at: 
# shape of distribution, unimodal, bimodal
# gaps
# outliers - distort analysis
# symmetry - same number of higk or low scores, need to adjust the distribution

# LOAD PACKAGES ############################################

library(datasets)

# LOAD DATA ################################################

?iris
head(iris)

# BASIC HISTOGRAMS #########################################

hist(iris$Sepal.Length)
# basic, auto adjust x-axis, chooses 7-9 bars (usually about best for hist)
hist(iris$Sepal.Width)
# same, almost perfect bell curve
hist(iris$Petal.Length) 
# big gap,and strong bar at the low end + bell curve
hist(iris$Petal.Width)
# same kind of pattern for petal length

# HISTOGRAM BY GROUP #######################################

# Put graphs in 3 rows and 1 column (3 on top of each other)
# change a parameter giving it the number of rows wanted in output
# concatenate (number of rows, number of columns)
par(mfrow = c(3, 1))

# Histograms for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Setosa",
  xlab = "",
  col = "red")
# basically a where command, 
# "where species is setosa, provide a histogram with these settings"
# xlim = manually ensure that they have the same x scale
# breaks = how many bars wanted in histogram (suggested)
# titled but not x-labeled and put it in red
#so results suggest that the separation is from the setosa but we'll see

hist(iris$Petal.Width [iris$Species == "versicolor"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Versicolor",
  xlab = "",
  col = "purple")
# same but in purple!

hist(iris$Petal.Width [iris$Species == "virginica"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Virginica",
  xlab = "",
  col = "blue")
# same but in blue

# results confirm that the low end was the setosa
# but now we also know that while versicolor and virginica overlap, they are still distinct enough
# technique: small multiples
# meaning making small versions of a graph over a variable on the same scale to see distinguishing traits

# Restore graphic parameter
par(mfrow=c(1, 1))
#make sure to do this because you're not trying to permanently change it, right?

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
