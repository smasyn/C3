if(!require("jsonlite")) install.packages("jsonlite")

library(jsonlite)
toJSON(list(data=75))

library(htmlwidgets)
library(devtools)

# install Rtools 3.3
# remove R3.4 from the path!
# how to remove from the path in Windows 10?

# create package using devtools
# generates a number of folders and files in the current working directory
devtools::create("C3")

# navigate to package dir
setwd("C3")

# create widget scaffolding
# creates three files
# R/C3Gauge.R, contains a template function C3Gauge
# a yaml file
# a javascript file
# also an inst folder, to store all external package dependencies
# in inst folder a htmlwidget subfolder
# C3Gauge.js
# C3Gauge.yaml
scaffoldWidget("C3Gauge",edit=FALSE)

# install package so we can test it
install()

# check that everything works
library(C3)
C3Gauge("hello, world")

# manually create a lib folder in htmlwidgets folder
# unzip the contents of tutorial_01_lib.zip in the lib folder
# edit C3Gauge.yaml
# edit the javascript template
#   - add code for the renderValue function

# re-install - make sure you have setwd("C3")
devtools::install()                                      
library(C3)
C3Gauge("")

# adjust the code inside C3Gauge.R
# adjust the code inside C3Gauge.js

devtools::install()                                      
library(C3)
C3Gauge(50)

# now write the Shiny app
