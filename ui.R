shinyUI(fluidPage(
  headerPanel("Cuboid Calculator"),
  sidebarLayout(
  sidebarPanel(
    
    numericInput(inputId='length','Enter Length', value='0'),
    numericInput(inputId='breadth','Enter Breadth', value='0'),
    numericInput(inputId='height','Enter Height', value='0'),
    dateInput("date","Date:")
    
  ),
  mainPanel(
    tabsetPanel(
      tabPanel('Calculate',
        h2('Volume and Surface Area'),
                h4('Volume is'),
                verbatimTextOutput("oid1"),
                h4('Surface Area is'),
                verbatimTextOutput("oid2"),
                h4('Today Date is'),
                verbatimTextOutput("odate")),
      tabPanel('Plot',
               plotOutput(outputId = "plot", height = "400px")),
                
      tabPanel('Documentation',
              h2('Cuboid Calculator'),
              h4('This application allows the user to enter the length, breadth, 
                  and height to get the volume and surface area of cuboid.'),
              h2('Course Project: Shiny Application and Reproducible Pitch'),
              h4('About this Course'),
              h4('A data product is the production output from a statistical 
                 analysis. Data products automate complex analysis tasks or 
                 use technology to expand the utility of a data informed model, 
                 algorithm or inference. This course covers the basics of 
                 creating data products using Shiny, R packages, and interactive 
                 graphics. The course will focus on the statistical fundamentals 
                 of creating a data product that can be used to tell a story 
                 about data to a mass audience.'),
              h2('Reproducible Pitch Presentation'),
              h4('My presentation is published here:'),
              h4('http://k4up.github.io/DevelopingDataProductsCoursera/'),
              h4('My Code can be reviewed:'),
              h4('https://github.com/K4uP/DevelopingDataProductsCoursera')
              )
  )))))