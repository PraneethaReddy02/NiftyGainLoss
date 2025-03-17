# ui.R
source("dependencies.R")

ui <- fluidPage(
  titlePanel("Nifty 50 Stock Data Viewer"),
  sidebarLayout(
    sidebarPanel(
      selectInput("company", "Select Company:", choices = companies),
      dateRangeInput("dates", "Select Date Range:",
                     start = Sys.Date() - 365, end = Sys.Date()),
      actionButton("fetch", "Fetch Data")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Focal Company Data",
                 h3("Real-Time Quote"),
                 tableOutput("quote"),
                 h3("Historical Chart"),
                 plotOutput("firmChart")
        ),
        tabPanel("Stock vs Nifty",
                 h3("Dual-Axis Plot: Stock vs Nifty"),
                 plotOutput("dualPlot")
        ),
        tabPanel("Black vs Red",
                 h3("Nifty50 Stocks: In the Black vs In the Red"),
                 tableOutput("blackRedTable")
        )
      )
    )
  )
)
