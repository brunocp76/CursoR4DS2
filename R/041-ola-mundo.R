library(shiny)

# "ui" é o que o usuário vai ver...
# ui <- fluidPage(
#    "Olá mundo!!!"
# )
#
# ui <- fluidPage(
#    shiny::tags$a(href = "https://www.curso-r.com", "site da curso-r")
# )

ui <- fluidPage(
   "Um histograma",
   plotOutput("hist")
)

# "server" é o que vai ser processado...
server <- function(input, output, session) {
   output$hist <- renderPlot(
      hist(mtcars$mpg)
   )
}

# "shinyApp" vai invocar a sessao...
shinyApp(ui, server)














# library(shiny)
#
# ui <- fluidPage("Olá, mundo!")
#
# server <- function(input, output, session) {
#   # O nosso código em R será colocado aqui.
# }
#
# shinyApp(ui, server)
