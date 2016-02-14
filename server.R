library(shiny)
library(ggplot2)

shinyServer(
  function(input,output)
  {
    #Barplot Colnames
    barnames <- c("Length", "Breadth", "Height", "Volume", "Surface")
    
    #Volume
    output$oid1<-renderText({(as.numeric((input$length))*as.numeric((input$breadth))*as.numeric((input$height)))})
    #Surface
    output$oid2<-renderText({2*(as.numeric(input$length)*as.numeric(input$breadth)+
        as.numeric(input$height)*as.numeric(input$breadth)+
        as.numeric(input$length)*as.numeric(input$height))})
    #Date
    output$odate<-renderPrint({input$date})
    #Plot
    output$plot <- renderPlot({
          
          barplot(height = cbind(as.numeric(input$length),
                                 as.numeric(input$breadth),
                                 as.numeric(input$height),
                                 as.numeric((input$length))*as.numeric((input$breadth))*as.numeric((input$height)),
                                 as.numeric(input$length)*as.numeric(input$breadth)+
                                  as.numeric(input$height)*as.numeric(input$breadth)+
                                  as.numeric(input$length)*as.numeric(input$height)
                                 ),
                  width = 1, space = NULL,
                  names.arg = barnames, legend.text = NULL, beside = FALSE,
                  horiz = FALSE, density = NULL, angle = 45,
                  col = NULL, border = par("fg"),
                  main = "Cube", sub = NULL, xlab = 'Dimensions', ylab = 'Value',
                  xlim = NULL, ylim = NULL, xpd = TRUE, log = "",
                  axes = TRUE, axisnames = TRUE,
                  cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
                  inside = TRUE, plot = TRUE, axis.lty = 0, offset = 0,
                  add = FALSE, args.legend = NULL)
    })
  })