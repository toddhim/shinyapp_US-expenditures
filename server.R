


# Rely on the 'USPersonalExpenditure' dataset in the datasets package.

library(datasets)
library(shiny)
USPersonalExpend <- t(USPersonalExpenditure) #transposing the data matrix

# Define a server for the Shiny app
function(input, output) {
        
        # Fill in the spot we created for a plot
        output$personalexp <- renderPlot({
                
                # Render a barplot
                barplot(USPersonalExpend[,input$category], 
                        main=input$category,
                        ylab="Amount spent  (in Billions)",
                        xlab="Year")
        })
}
