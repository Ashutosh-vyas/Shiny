library(markdown)
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Text analytics") ,
  sidebarPanel (
    h3("Made it easy !!"),
    textInput("dir","write the text you want to analyze", value = "", width = 1000, placeholder = NULL)
    ,radioButtons("pattern","select your option of analysis", 
                 c("count words"="1",
                   "count ASCII characters"="2"),selected = character(0)),
    dateInput("date","Date:")
 #   submitButton("Submit")
    ),
  mainPanel(
            h3("Comment"),
            h2(verbatimTextOutput("comment")),
            actionButton("submit","submit")
            ,submitButton("NEXT")
            ,includeMarkdown("TextAnalyticsDocumentation.md")
  )
))