# Using the 'swiss' dataset of the datasets package

library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the output we created for a plot
  output$swissPlot <- renderPlot({
    
    # Render a barplot with the index selected by user
    barplot(swiss[,input$Index], 
            main=input$Index,
            ylab="Value",
            xlab="Cities")
  })
}  
 
  
 
