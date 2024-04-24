

spatial_inator <- function(data_frame, lon_col, lat_col, coord_ref) {

  library(tidycensus)
  library(sf)
  library(sp)

  # Create an sf object
  sf_object <- st_as_sf(data_frame, coords = c(lon_col, lat_col), crs = coord_ref)


  return(sf_object)
  }
