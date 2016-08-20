shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Diamond cost calcuator"),
    sidebarPanel(
      numericInput('carat', 'Carats in quarter carat increments', .25, min = .25, max = 6, step = .25),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Estimated Cost'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a predicted cost of '),
      verbatimTextOutput("prediction")
    )
  )
)