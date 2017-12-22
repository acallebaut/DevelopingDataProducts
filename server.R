
###########################################################""

# COURSERA PROJECT 

# DEVELOPING DATA PRODUCTS.

# DATE: December 21rst 2017

# Documentation: 
#' Find below my shiny app taking care of discounts on prices. 
#' The server.R code is related to functions computing the output. 
#' Two reactivity functions have been computed. 

# Loading the library:
library(shiny)

# Computing the Shiny Server function
shinyServer(function(input, output){

  output$Item <- renderText(input$items)
  
  output$euros <- renderText(input$price)
  
 
  output$percentage <- renderText(input$discount)
  
  benefits <- reactive({
   input$price*(input$discount/100)
  })
  
  newprice <- reactive({
    input$price*(1-(input$discount/100))
  })
  
  output$Discount_Euros <- renderText({
    benefits()
  })
  
  output$NewPrice <- renderText({
    newprice()
  })

})

###########################################################