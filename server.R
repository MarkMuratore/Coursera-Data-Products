library(shiny)

shinyServer( 
  function(input, output) {
    
    predictBoy <- reactive({
      (input$mom + input$dad + 5) / 2
      
    })
    
    predictGirl <- reactive({
      (input$mom + input$dad - 5) / 2
      
    })
  output$`input$mom` <- renderPrint({input$mom})
  output$`input$dad` <- renderPrint({input$dad})
  
  output$predictBoy <- renderPrint({predictBoy()})
  output$predictGirl <- renderPrint({predictGirl()})
}
)
