server<-function(input, output) { 


output$anag<-renderTable(
  anag[,-c(3,5)], bordered = TRUE,  
  spacing = 'xs')

# output$mpa<-renderTable(
#  MPA, bordered = TRUE,  
#   spacing = 'xs')
    
pa<-reactive({ 
  MPA %>% 
    filter(Operatore==input$op) %>% 
    filter(Qualificazione==input$ql) %>% 
    select(MP,Descrizione)
  })

output$mpa<-renderDataTable(
  pa(), rownames = FALSE,filter='top',
  options = list(
    searching = TRUE))
  

 





  # output$nc <- DT::renderDataTable(
  #     dati,
  #     rownames = FALSE,filter='top',
  #     options = list(searching = TRUE))

  }