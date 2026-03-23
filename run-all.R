##run all r

##setwd("..")
##source("R/01-import.R")
##source("R/02-clean.R")
##quarto::quarto_render("R/report.qmd")
##quarto::quarto_render("R/report.qmd", quiet = FALSE)
##getwd()
##list.files()

##actual code that worked 

source("R/01-import.R")
source("R/02-clean.R")
quarto::quarto_render("report.qmd")