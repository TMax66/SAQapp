ui<-navbarPage("IZSLER- Sez. di Bergamo - SAQ",
           theme = shinytheme("cerulean"),
           
           tabPanel("Organizzazione",
                    fluidRow(   
                    column(6,
                           img(src='org.png', align = "left")
                       ),
                    column(6,
                           tableOutput("anag")
                           )
                    )
             
           ),
           
           
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
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Eu70iDSPr_dHrkJc6oTizSYBKtjm9-GBbxWYPw0I30Nkag?e=0V2o3C"),
                
                a(actionButton("riu", "Riunioni",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/ElTBF1DHYnxFvkpnQufWqzIB0HGnPw4QC3cam29RVk8ygA?e=v1k4qF"),
                       
  
                a(actionButton("lista", "Liste di distribuzione",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Eg4OLcsd18xEiIkOpXe412MBxJSe92fi6fRbG6ZImyCbCA?e=7LIsso"),
                
                a(actionButton("est", "Elenco locale documenti di origine esterna",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:w:/g/personal/vito_tranquillo_izsler_it/EW4LBokUzA1LsHHY9VSgQ-8BXzd1ctkjdEAccBvTMNFvkQ?e=MF25kk")
                
                       )),
                hr(),
                br(),

                column(12, 
                    fluidRow(   
                h4("Audit"),  
                a(actionButton("via", "Sorveglianza Accredia",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Esl1eyDxR-RMsGJcnehdSDkBOzx06wZzWReuRaYcAwBuTA?e=8pn8ek"), 
                
                
                a(actionButton("vii", "Visite Ispettive Interne",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Ek9-b7WV6lRKtudssVOCfHkB5iDHKUmfPnlF6JLOgbkdAg?e=BZjMgB"), 
                
                
                         )
                  
                )
                ),
           
           tabPanel("Documentazione generale", 
                    fluidRow(
                      column(12,
                             
                             a(actionButton("mq", "Manuale della qualità",
                                            class = "btn-primary",
                                            icon("chart-bar")),
                               href=""),
                             
                             
                             a(actionButton("ppgg", "Procedure Generali",
                                            class = "btn-primary",
                                            icon("chart-bar")),
                               href=""),
                             
                             a(actionButton("mmpp", "Metodi di Prova",
                                            class = "btn-primary",
                                            icon("chart-bar")),
                               href="")

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
                        href="https://izslerapp.shinyapps.io/PG85E/"), 
                     
                       actionButton("map", "Matrice Prove/Addetti",
                                     class = "btn-primary",
                                     icon("chart-bar"),
                      )
   
                    )
                    ),
                    br(),
                    fluidRow(
                         
                      conditionalPanel( 
                        
                        condition = "input.map==1", 
                        sidebarPanel(
                        selectInput("op", "Operatore", 
                                    c( unique(as.character(MPA$Operatore)))), 
                        selectInput("ql", "Qualificazione", 
                                    c(unique(as.character(MPA$Qualificazione))))
                      ),
                       column(8, 
                      dataTableOutput("mpa")
                    )
                    )
                    )
                    ),
           tabPanel("Archivio NC",
                    fluidPage(
                      DT::dataTableOutput("nc")
                    )
           )
           
                    )

