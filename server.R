library(shiny)
library(ggplot2)
reg<-lm(price~carat, data = diamonds)
caratCost <- function(in_carat){
  l_output<-predict(reg, data.frame(carat = c(in_carat))) 
  if (l_output < 0)
  {
    l_output<-500
  }
  sprintf("$%.2f", l_output)
}
shinyServer(
  function(input, output) {
    output$inputValue <- renderText({input$carat})
    output$prediction <- renderText({caratCost(input$carat)})
  }
)