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
          ),
    h3 ("From Central Limit Theorem, as the sample size (n) increase, the distribution of sample mean will approach normal distribution.In this Shiny App, we can observe the difference of exponential distribution with difference sample size by specifing N1 and N2. We generate random sample variables with one thousand simulations and specify lambda=0.2. ")
  ))

