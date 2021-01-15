Gujranwala <- leaflet(dataframetable) %>%
  addProviderTiles(providers$OpenTopoMap)%>%
  addAwesomeMarkers(
    data = dataframetable, 
    lng =~long, 
    lat = ~lat, 
    label = ~locations,
    clusterOptions = markerClusterOptions(),
    #popup = paste(popupImage(dataframetable$popup, src = c("remote")),
    #             "<br>",
    #            "More: ",
    #           paste("<a href=",
    #                dataframetable$popup,
    #               "<a/>")
    #          )
    popup = ~popup
  )

addMiniMap(Gujranwala, position = "bottomleft", width = 125, height = 125)

Gujranwala
