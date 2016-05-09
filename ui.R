library(shiny)

# -----------ui.R ----------------##

shinyUI(
  fluidPage(
    titlePanel("1st Shiny App: Central Limit Theorem with Exponential Distribution"),
    sidebarLayout(
      sidebarPanel( sliderInput("n1","Sample Size N1:",min = 1, max = 30,value = 1),
                    sliderInput("n2","Sample Size N2:",min = 31, max = 100,value = 40)
                    ),

      mainPanel(  plotOutput("distPlot1") )
          )
  ))

