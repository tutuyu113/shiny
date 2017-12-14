## This is the Shiny App to calculate BMI
## I provide three ways to do the calculation, in meters & kg, in ft & lb, and in inches & lb

library(shiny)

shinyUI(fluidPage(
      
      titlePanel("BMI CALCULATOR"),
      
      sidebarLayout(
            sidebarPanel(
                  textInput("height", "What is your height?", value=1),   # type in your height
                  textInput("weight", "What is your weight?", value=1),   # type in your weight
                  checkboxInput("mkg", "Calculate BMI using meters(m) & kilograms(kg)", value = FALSE), # choose the units
                  checkboxInput("ftlb", "Calculate BMI using feet(ft) & pounds(lb)", value = FALSE),
                  checkboxInput("inlb", "Calculate BMI using inches(in) and pounds(lb)", value=FALSE),
                  
                  submitButton("Submit")   # add a submit button
            ),
            
            mainPanel(
                  h2("Your BMI (using m & kg):"),     # show the calculation results
                  textOutput("out1"),                 
                  h2("Your BMI (using ft & lb):"),
                  textOutput("out2"),
                  h2("Your BMI (using in & lb):"),
                  textOutput("out3"),
                  h1(""),
                  h4("BMI <= 18.5, underweight"),      # some notes for users to analyze the BMI results
                  h4("BMI between 18.5 - 24.9, normal weight"),
                  h4("BMI between 25-29.9, overweight"),
                  h4("BMI >= 30, obesity")
          
            )
      )
))



