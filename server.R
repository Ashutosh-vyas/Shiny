library(shiny)
datapull <- function(input,count,directory)
{
  data <- as.character(directory)
    print(paste("numer of times submit button clicked : ",count))
    x <- as.character(data)
    print(x)
    print("we can perform Semantics on this text")
    if(input=="1")
    {
      y <- unlist(strsplit(x,split = " "))
      print("number of words -> ")
      return(as.character(length(y)))
    }
    if(input=="2")
    {
      y <- unlist(strsplit(x,split = ""))
     print("number of ASCII characters ->")
       return(as.character(length(y)))
    }
}

shinyServer(
  function(input,output){
    count <- reactiveValues(i = -1)
    observe({
      input$submit
      isolate({
        count$i <- count$i + 1
        output$comment <- renderPrint(datapull(input$pattern,count$i,input$dir))
        })
    })
  }
)