library(shiny)
library(shinydashboard)
library (DT)
library(plotly)
library(reshape2)
library(data.table)
library(dplyr)
library(ggplot2)
library(tibble)
library(lubridate)
library(scales)
library(pivottabler)
library(htmlwidgets)
library(gridExtra)
library(forecast)
library(xts)
library(dygraphs)
library(datasets)
library(tidyverse)
library(googlesheets)

loadData <- function() {
  sheet <- gs_title("NC")
  data<-gs_read_csv(sheet)
  #data$dt<-as.Date(data$dt, origin=as.Date("1970-01-01"))
}



