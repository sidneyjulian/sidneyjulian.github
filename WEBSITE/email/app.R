#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

install.packages("mailR")
library(shiny)
library(mailR)

ui <- fluidPage(
  textInput("name", "Name:"),
  textInput("email", "Email:"),
  textInput("subject", "Subject:"),
  textareaInput("message", "Message:"),
  actionButton("send", "Send Email")
)

server <- function(input, output) {
  observeEvent(input$send, {
    body <- paste("Name: ", input$name, "\n", 
                  "Email: ", input$email, "\n",
                  "Subject: ", input$subject, "\n\n",
                  "Message: ", input$message)
    send.mail(from = input$email,
              to = "sidneyjulian7@gmail.com",
              subject = input$subject,
              body = body,
              smtp = list(host.name = "smtp.gmail.com", 
                          port = 465, 
                          user.name = "sidneyjulian7", 
                          passwd = "Angel2001!", 
                          ssl = TRUE))
  })
}

shinyApp(ui, server)




