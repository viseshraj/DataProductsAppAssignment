library(shiny)
shinyServer(
  function(input,output){
    output$outputValue <- renderText({
      input$Calc
      isolate(
        if(input$operator == "add") input$value1 + input$value2
        else if (input$operator == "sub" & input$absolute == TRUE) abs(input$value1 - input$value2)
        else if (input$operator == "sub" & input$absolute == FALSE) input$value1 - input$value2
        else if (input$operator == "div") input$value1 / input$value2
        else if (input$operator == "mul") input$value1 * input$value2
        )
    })
    output$About <- renderText("<b>DOCUMENTATION:</b> <br/><br/>The goal of this application is to carryout simple arithematic operation. <br/>The Steps are mentioned below, <ul><li>Enter two values</li>
                               <li>Select the desired operation</li>
                               <li>Check the checkbox if you need the absolute value</li>
                               <li>Click on Calculate</li></ul>")
  }
)
