library(shiny)

ui <- pageWithSidebar(
  headerPanel('Tooth Growth k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(ToothGrowth[, c(1,3)])),
    selectInput('ycol', 'Y Variable', names(ToothGrowth[, c(1,3)]),
                selected=names(ToothGrowth)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
