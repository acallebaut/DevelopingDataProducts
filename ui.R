
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

# Creating the UI part with the input. 
shinyUI(fluidPage(
  titlePanel("Coursera Project"), 
  sidebarLayout(
    sidebarPanel(
      h3("Welcome and enjoy my Shiny App."),
      h5("The purpose of this app is to discover the price of an item after applying a discount."),
      numericInput("price", "Please enter the price of your item.", min=0, max=1000,value=20),
      sliderInput("discount", "What percentage on your item did you get?", 0, 100, 10),
      selectInput("items", "Please select what you want to buy.", c("Clothes", "Food", "Electronics", "Books", "Make-up"))
    
    ), 
    mainPanel(
      h4("Price of the item : "),
      textOutput("euros"),
      h4("Discount on the item in % : "),
      textOutput("percentage"),
      h4("Discount in euros taken the price into account : "), 
      textOutput("Discount_Euros"),
      h4("Item you want to buy : "),
      textOutput("Item"),
      h4(em("The price of your item with discount is (euros) :")),
      textOutput("NewPrice"),
      
      h3("Documentation"),
      h5("This shiny app has been made in R with the library shiny.
         The discount on the item has been computed by multiplying the discount percentage with
         the price. The remaining amount is the price you have to pay. 
         Please click on the item you want to buy, enter the price and discount you might have, and discover 
         the new price. ")
    )
  )
))

#############################################################################