library(straf)
library(shiny)
dir <- system.file("application", package = "straf")
setwd(dir)
shiny::shinyAppDir(".")