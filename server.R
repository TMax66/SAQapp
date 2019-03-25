server<-function(input, output) { 
  
  output$nc <- DT::renderDataTable(
    loadData(),
    rownames = FALSE,filter='top',
    options = list(searching = TRUE))

  }