

state_geometry_inator <- function(sf_object, cb = FALSE, resolution = "500k", year = NULL){

  # Retrieve US Counties geometry
  census_state <- tigris::states(cb = cb, resolution = resolution, year = year)

  # Spatial filter and join only US counties with reported Big Foot sittings
  data_state_join <- census_state %>%
    st_join(sf_object, left = FALSE)

  return(data_state_join)

  }
