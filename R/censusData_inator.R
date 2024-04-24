

censusData_inator<- function(sf_object, censusData_sf){

  # Spatial filter and join only US census data with sf object data
  data_censusData_join <- censusData_sf %>%
    st_join(sf_object, left = FALSE)

  return(data_censusData_join)

  }

