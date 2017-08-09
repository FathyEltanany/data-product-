library(shiny)
library(plotly)
shinyUI(fluidPage(
        titlePanel("Plot Random Numbers"),
        sidebarLayout(
                sidebarPanel(
                        numericInput("numeric", "How Many Random Numbers Should be Plotted?",
                                     value = 1000, min = 1, max = 1000, step = 1),

                        textInput("Xaxis","title  of x axis :",value = "x axis"),
                        textInput("Yaxis","title  of y axis :",value = "Y axis"),

                        checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
                        checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),


                        submitButton("submit")
                ),
                mainPanel(
                        h3("Graph of Random Points"),
                        plotlyOutput("plot1")

                )
        )
))
