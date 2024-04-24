

censusTract_geometry_inator <- function(sf_object, States = NULL, Counties = NULL, cb = FALSE, resolution = "500k", year = NULL){

  # Retrieve US tracts geometry
  census_tracts <- tigris::tracts(state = States, county = Counties, cb = cb, resolution = resolution, year = year)

  # Spatial filter and join only US counties with reported Big Foot sittings
  data_tracts_join <- census_tracts %>%
    st_join(sf_object, left = FALSE)

  return(data_tracts_join)

  }
