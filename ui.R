ui<-
  fluidPage(theme = shinytheme("cerulean"))


navbarPage("IZSLER- Sez. di Bergamo - SAQ",
           tabPanel("Documentazione locale",
                    a(actionButton("SK", "Schede individuali",
                                   class = "btn-primary",
                                   icon("address-card")),
                      href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/EiwdbEPRL6pPgyATzF1oc5oBUwZ9hA17CJtQQnSHD5gb8g?e=IYD6tR"),

                a(actionButton("QM", "Qualificazione e Mantenimenti",
                            class = "btn-primary",
                      icon("vials")),
                     href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Et3U11eBqS1Hj-RcsczKOLgBJ6pt1pc9xj8puuQASHuXBA?e=zCFAPd"),
               
                a(actionButton("M", "Moduli",
                              class = "btn-primary",
                              icon("file-alt")),
                 href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/EhHQRo7I5zhAtvC5v5w-ZYoBTUk94mcpzMtWbnIIAMjNuw?e=vDGBI0"),
                
                a(actionButton("IO", "Istruzioni Operative",
                               class = "btn-primary",
                               icon("tasks")),
                  href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Eg1cfmMP4SVEjlVFlVL_wnIBAJ8ih-2mCXQw89U__qXXUg?e=Rqimnq")
                
                
               
                
                
                
                
                    ), 
           
           
           
           
           
           
           tabPanel("Archivio NC",
                    fluidPage(
                      DT::dataTableOutput("nc")
                    )
                    ) 
                    )

 # tags$a(href="https://izsler-my.sharepoint.com/:f:/g/personal/vito_tranquillo_izsler_it/Et3U11eBqS1Hj-RcsczKOLgBJ6pt1pc9xj8puuQASHuXBA?e=zCFAPd", "Qualificazioni/Mantenimenti")

  

  
