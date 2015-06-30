# geocode

geocode <- function(address){
        url <- paste ('http://maps.googleapis.com/maps/api/geocode/xml?address=', address, '&sensor=true', sep = "", collapse = NULL)
        doc = XML::xmlTreeParse(url, useInternal=TRUE)
        lat = as.numeric(XML::xmlValue(XML::getNodeSet(doc, '//location/lat')[[1]]))
        lng = as.numeric(XML::xmlValue(XML::getNodeSet(doc, '//location/lng')[[1]]))
        Sys.sleep(0.2) # Google API only accepts 5 queries per second for free accounts
        return(data.frame(lat = lat, lng = lng))
}
