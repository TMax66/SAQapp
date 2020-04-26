server<-function(input, output) { 

  observeEvent(input$QM, {
    
  })
  
  
  
  
output$nc <- DT::renderDataTable(
    dati,
    rownames = FALSE,filter='top',
    options = list(searching = TRUE))
  
  }