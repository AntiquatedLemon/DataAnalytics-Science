# File:   Packages.R
# Course: R: An Introduction (with RStudio)

# two types of packages:
#   base: installed with R but not default loaded
#   contributed/3rd-party: download, install, load separately
# sources of packages: CRAN,Crantastic!, GitHub
# 
# common packages: 
#   dplyr - manipulate dataframes
#   tidyr - cleaning information
#   stringr - work with strings/text information
#   lubridate - manipulate data information
#   httr - website data
#   ggvis - grammar of graphics, interactive visualizations
#   ggplot2 - creating graphics or visualizations
#   shiny - create interactive applications can install on websites
#   rio - R input output, importing and exporting data
#   rmarkdown - create interactive notebooks or rich documents for sharing information
#   pacman - our lovely package manager
  



# LOAD PACKAGES ############################################

# I recommend "pacman" for managing add-on packages. It will
# install packages, if needed, and then load the packages.
install.packages("pacman")

# Then load the package by using either of the following:
require(pacman)  # Gives a confirmation message.
library(pacman)  # No message.

# Or, by using "pacman::p_load" you can use the p_load
# function from pacman without actually loading pacman.
# These are packages I load every time.
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
  ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
  stringr, tidyr)
#nice thing about pacman is that if you dont have it, it will install
#make it available and load it 

library(datasets)  # Load/unload base packages manually

# CLEAN UP #################################################

# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
