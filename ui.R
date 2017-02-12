
# Rely on the 'USPersonalExpenditure' dataset in the datasets package.

library(datasets)
library(shiny)
USPersonalExpend <- t(USPersonalExpenditure) #transposing the data matrix

# Use a fluid Bootstrap layout
fluidPage(    
        
        # Give the page a title
        titlePanel("US personal expenditures (in billions of dollars)"),
        
        # Generate a row with a sidebar
        sidebarLayout(      
                
                # Define the sidebar with one input
                sidebarPanel(
                        selectInput("category", "Select Category:", 
                                    choices=colnames(USPersonalExpend)),
                        hr(),
                        helpText("Data source: The World Almanac and Book of Facts, 1962, page 756.")
                ),
                
                # Create a spot for the barplot
                mainPanel(
                        plotOutput("personalexp")  
                )
                
        )
)