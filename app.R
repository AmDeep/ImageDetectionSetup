#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
dtst<-pl
ui <- fluidPage(
h6(titlePanel("PIVOT VISUALIZATION OF PLASTIC WASTE")),
img(src = "https://pbs.twimg.com/profile_images/1017812641614450689/pbLCjatZ.jpg", height = 200, width = 200),

sidebarLayout(
 sliderInput("Itemname", "Quantity", min = 0, max = 100,
                           value = c(25, 40), pre = "Stamps"),
  textInput(inputId = "name", label = "Enter your name.")
),
sidebarLayout(
  sidebarPanel(
    radioButtons(
      inputId = "month",
      label = "In which month are you born?",
      choices = list(
        "Jan - March" = 1,
        "April - June" = 2,
        "July - September" = 3,
        "October - November" = 4
      ),
      selected = 1
    ),
    
    numericInput(
      inputId = "children_count",
      label = "How many children do you have?",
      value = 2,
      min = 0,
      max = 15
    ),
    
    selectInput(
      inputId  = "smoker",
      label = "Are you a smoker?",
      choices = c("Yes", "No", "I smoke rarely"),
      selected = "Yes"
    ),
    
    checkboxInput(
      inputId = "checkbox",
      label = "Are you a human?",
      value = FALSE
    ),
    
    checkboxGroupInput(
      inputId = "checkbox2",
      label = "2 + 2 = ?",
      choices = list(4, "Four", "IV", "None of the above")
    )
    
  ),
  mainPanel(
      textOutput("txt")
    )
  
))
server = function(input, output) { }
shinyApp(ui, server)
  mainPanel("the results will go here")
  
  server <- function(input, output) {
    
    txt <- renderText({ 
      "You have selected this"
    })
    
  } 
  




# Run the application 
shinyApp(ui = ui, server = server)

