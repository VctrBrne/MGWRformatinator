

blockGroup_geometry_inator <- function(sf_object, States = NULL, Counties = NULL, cb = FALSE, year = NULL){

  # Retrieve US block groups geometry
  census_blockGroups <- tigris::block_groups(state = States, county = Counties, cb = cb, year = year)

  # Spatial filter and join only US counties with reported Big Foot sittings
  data_blockGroups_join <- census_blockGroups %>%
    st_join(sf_object, left = FALSE)

  return(data_blockGroups_join)

  }
