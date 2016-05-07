library(shiny)
shinyUI(navbarPage("Calculator",
  tabPanel("Application",
      mainPanel(
        bootstrapPage(
          div(style="display:inline-block",numericInput(inputId="value1", label="First Number", value = 0)),
          div(style="display:inline-block",numericInput(inputId="value2", label="Second Number", value = 0))
        ),
        radioButtons(
          "operator",
          "Select Arithmetic Operation",
          c("Addition" = "add",
            "Subtract" = "sub",
            "Divide" = "div",
            "Multiply" = "mul")
          ),
        checkboxInput("absolute","Display Absolute Value"),
        actionButton("Calc","Calculate"),
        h5("The output is:"),
        verbatimTextOutput("outputValue")
      )
    ),
  tabPanel("About", 
           htmlOutput("About"))
  )
)
