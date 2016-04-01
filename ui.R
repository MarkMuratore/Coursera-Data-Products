library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Child Height Predictor"),
    sidebarPanel(
      numericInput('mom', 'Enter height for mother (in.)', 70, min = 60, max = 72, step = 0.5
      ),
      numericInput('dad', 'Enter height for father (in.)', 75, min = 66, max = 84, step = 0.5),
      
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('Height of Mother'),
      verbatimTextOutput("input$mom"),
      h4('Height of Father'),
      verbatimTextOutput("input$dad"),
      
      h4('Predicted height for a boy: '),
      verbatimTextOutput("predictBoy"),
      h4('Predicted height for a girl: '),
      verbatimTextOutput("predictGirl")
    ) )
)
  