# geocode
geocode <- function(addresses){
  lat <- c()
  lng <- c()
  for(i in 1:length(addresses)) {
    url <- paste ('http://maps.googleapis.com/maps/api/geocode/xml?address=', addresses[i], '&sensor=true', sep = "", collapse = NULL)
    doc = XML::xmlTreeParse(url, useInternal=TRUE)
    lat[i] = as.numeric(XML::xmlValue(XML::getNodeSet(doc, '//location/lat')[[1]]))
    lng[i] = as.numeric(XML::xmlValue(XML::getNodeSet(doc, '//location/lng')[[1]]))
    Sys.sleep(0.2) # Google API only accepts 5 queries per second for free accounts
  }
  return(data.frame(lat = lat, lng = lng))
}
