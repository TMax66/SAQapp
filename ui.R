ui<-navbarPage("IZSLER- Sez. di Bergamo - SAQ",
    tabPanel("Non Conformità",
       fluidPage(
         fluidRow(
          tabsetPanel(type="tabs",
                tabPanel("Inserimento dati",
                    sidebarPanel( ),
                    mainPanel(  )
                          ),
                tabPanel("Archivio NC",
                     
                     mainPanel( 
                       fluidRow(
                         DT::dataTableOutput("nc")
                       ))
                          )
                      )
                      )
                  )
                  ))
          
               