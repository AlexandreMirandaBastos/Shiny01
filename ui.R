# It program uses dataset 'swiss' for analysis
# Loading the "datasets" library for use of 'swiss'
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # A title for the Page
  titlePanel("Swiss Indicators"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Defining one input on the side bar
    sidebarPanel(
      selectInput("Index", "Index:", 
                  choices=colnames(swiss)),
      hr(),
      helpText("Swiss Fertility and Socioeconomic Indicators (1888) Data")
    ),
    
    # Create a mainpanel for the barplot
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Plot", plotOutput("swissPlot")), 
                  tabPanel("help", includeMarkdown("help.Rmd"))
              )
    )
)
)
