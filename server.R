library(shiny)
library(plotly)
shinyServer(function(input, output) {
        output$plot1 <- renderPlotly({
                set.seed(2016-05-25)
                number_of_points <- input$numeric

                dataX <- runif(number_of_points)
                dataY <- runif(number_of_points)


                xlab <- ifelse(input$show_xlab, input$Xaxis, "")
                ylab <- ifelse(input$show_ylab, input$Yaxis, "")


                plot_ly(x = ~dataX, y = ~dataY, type = "scatter")%>%
                        layout(

                                xaxis = list(title  = xlab),
                                yaxis = list(title  = ylab)
                        )
        })
})
