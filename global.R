library(shiny)
library(shinythemes)
library(tidyverse)
library(lubridate)
library (DT)
library(googledrive)
library(googlesheets4)
library(readxl)


###IL CODICE SEGUENTE SI FA SOLO LA PRIMA VOLTA CHE SI ACCEDE AL DRIVE DI GOOGLE
# options(gargle_oauth_cache = ".secrets")
# gargle::gargle_oauth_cache()
# drive_auth()
# list.files(".secrets/")

# options(
#   gargle_oauth_cache = ".secrets",
#   gargle_oauth_email = TRUE
# )
# drive_auth()
# sheets_auth(token = drive_token())
#   mydrive<-drive_find(type = "spreadsheet") 
# id<-mydrive[1,2]
# dati<-read_sheet(id$id)


MPA <-read_excel("MPA.xlsx")


anag<-read_excel("MPA.xlsx", sheet = "anagrafe")




MPA<-MPA %>% 
  pivot_longer(3:14, names_to = "Operatore", values_to = "Qualificazione")
  