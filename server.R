library(shiny)
library(ggplot2)

# -----------server.R ----------------##

shinyServer(
  function(input, output) {

    output$distPlot1 <- renderPlot({
     
      set.seed(888)
      n1=input$n1
      n2=input$n2
      n3=input$n3
      
      noism=1000
      lambda=0.2
      
      # 1. Simulate Exponatial random variable with sample size N1
      Sample1<-matrix(rexp(n1*noism, rate=lambda), noism)
      SampleMean1<-apply(Sample1,1,mean)
      samplemean1<-data.frame(x=SampleMean1)
      
      # 2. Simulate Exponatial random variable with sample size N2
      Sample2<-matrix(rexp(n2*noism, rate=lambda), noism)
      SampleMean2<-apply(Sample2,1,mean)
      samplemean2<-data.frame(x=SampleMean2)
      
      # 3. Plot
      g<-ggplot()
      g<-g+geom_density(data=samplemean1,aes(x=x,colour="Exponentials Distribution(n=n1)"),linetype="solid")
      g<-g+geom_density(data=samplemean2,aes(x=x,colour="Exponentials Distribution(n=n2)"),linetype="solid")
      g<-g+labs(title="Exponentials Distribution")
      g<-g+xlim(c(0,10))
      g
      
    })
  }
)


