shinyUI(
  fluidPage(
    titlePanel("Diamond cost calculator (the most carats for your dollar!!)"),
    sidebarPanel(
      numericInput('carat', 'Carats in quarter carat increments', .25, min = .25, max = 6, step = .25),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Estimated Cost'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a predicted cost of '),
      verbatimTextOutput("prediction"),
      h4("=========================="),
      h4("instructions:"),
      h4("1) Select your size in carats (using the selector on the left)"),
      h4("2) Click the submit button"),
      h4("3) View your estimated cost!")
    )
  )
)
