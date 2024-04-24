

county_geometry_inator <- function(sf_object, States = NULL, cb = FALSE, resolution = "500k", year = NULL){

  # Retrieve US Counties geometry
  census_counties <- tigris::counties(state = States, cb = cb, resolution = resolution, year = year)

  # Spatial filter and join only US counties with reported Big Foot sittings
  data_counties_join <- census_counties %>%
    st_join(sf_object, left = FALSE)

  return(data_counties_join)

}
