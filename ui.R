ui<-navbarPage("IZSLER- Sez. di Bergamo - SAQ",
           theme = shinytheme("cerulean"),
           tabPanel("Documentazione locale",
                    column(12,
                    fluidRow(
                    h4( "Personale"),
                    a(actionButton("SK", "Schede individuali",
                                   class = "btn-primary",
                                   icon("address-card")),
                      href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/EiwdbEPRL6pPgyATzF1oc5oBUwZ9hA17CJtQQnSHD5gb8g?e=IYD6tR"),

                a(actionButton("QM", "Qualificazione e Mantenimenti",
                            class = "btn-primary",
                      icon("vials")),
                     href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Et3U11eBqS1Hj-RcsczKOLgBJ6pt1pc9xj8puuQASHuXBA?e=zCFAPd"),
                    )),
              
                hr(),
                br(),
 
                column(12, 
                       fluidRow( 
                         h4("Documentazione organizzativa"),
                a(actionButton("M", "Moduli",
                              class = "btn-primary",
                              icon("file-alt")),
                 href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/EhHQRo7I5zhAtvC5v5w-ZYoBTUk94mcpzMtWbnIIAMjNuw?e=vDGBI0"),
                
                a(actionButton("IO", "Istruzioni Operative",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Eg1cfmMP4SVEjlVFlVL_wnIBAJ8ih-2mCXQw89U__qXXUg?e=Rqimnq"),
                
                a(actionButton("daut", "Documenti autoportanti",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Eu70iDSPr_dHrkJc6oTizSYBKtjm9-GBbxWYPw0I30Nkag?e=0V2o3C")
                
                       )
                
                )
                    ),
           
           tabPanel("Tools",
                    fluidRow(
                      column(12, 
                      a(actionButton("CC", "Carte di Controllo",
                                     class = "btn-primary",
                                     icon("chart-bar")),
                        href="https://izslerbg.shinyapps.io/CCbergamo/"),

                      a(actionButton("pg85", "PG00/085",
                                     class = "btn-primary",
                                     icon("chart-bar")),
                        href="https://izslerapp.shinyapps.io/PG85E/")
   
                    )
                    )
                    ),
           tabPanel("Archivio NC",
                    fluidPage(
                      DT::dataTableOutput("nc")
                    )
           )
           
                    )

