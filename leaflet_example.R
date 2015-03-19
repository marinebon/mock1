# install prerequisites, just once
# install.packages('devtools')
# library(devtools)
# install_github("rstudio/htmlwidgets")
# install_github("rstudio/leaflet")

library(htmlwidgets)
library(leaflet) 
pal <- colorQuantile("YlOrRd", NULL, n = 8)
orstationc = read.csv('orstationc.csv')
leaflet(orstationc) %>% 
  addTiles() %>%
  addCircleMarkers(color = ~pal(tann))