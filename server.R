# Depending on the units the users choose, I calculate the BMI accordingly

library(shiny)

shinyServer(function(input, output) {
      

      output$out1 <- renderText({
            if(input$mkg){
                  as.numeric(input$weight)/as.numeric(input$height)/as.numeric(input$height)   # don't forget to tranlate the input into numeric values
            }
      })
      
      output$out2 <- renderText({
            if(input$ftlb){
                  as.numeric(input$weight)*4.88/as.numeric(input$height)/as.numeric(input$height)
            }
      })
      
      output$out3 <- renderText({
            if(input$inlb){
                  as.numeric(input$weight)*703/as.numeric(input$height)/as.numeric(input$height)
            }
      })
      
      
})

