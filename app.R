library(shiny)

ui <- fluidPage(
  titlePanel("Zadanie 2"),
  sidebarLayout(
    sidebarPanel(
      textInput("mojTekstInput", "Wpisz tekst poniżej:"),
      numericInput("mojNumerInput", "Wybierz numer od 0 do 100:",
                   value = 50, min = 0, max = 100, step = 1),
      selectInput("mojSelectInput", "Wybierz literę od A do K:",
                  choices = LETTERS[1:11])
    ),
    mainPanel(
      textOutput("wyjsciowyTekst")
    )
  )
)

server <- function(input, output) {
  output$wyjsciowyTekst <-
    renderText(paste("Oto tekst, numer i litera:", 
                     input$mojTekstInput, 
                     input$mojNumerInput, 
                     input$mojSelectInput ))
}

shinyApp(ui, server)
