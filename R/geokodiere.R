# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

geokodiere <- function(address){
        library(XML)
        url <- paste ('http://maps.googleapis.com/maps/api/geocode/xml?address=', address, '&sensor=true', sep = "", collapse = NULL)
        doc = xmlTreeParse(url, useInternal=TRUE)
        lat = as.numeric(xmlValue(getNodeSet(doc, '//location/lat')[[1]]))
        lng = as.numeric(xmlValue(getNodeSet(doc, '//location/lng')[[1]]))
        Sys.sleep(1) # Warten, sonst gibt die Google API nur M?ll zur?ck..
        return(data.frame(lat = lat, lng = lng))
}
