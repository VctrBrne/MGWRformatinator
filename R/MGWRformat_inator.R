


MGWRformat_inator <- function(sf_object) {

  # Using the as_Spatial{sf} function to create a Spatial*DataFrame object that can be used by gwr.multiscale{GWmodel}
  SptlDataFrame_object <- as_Spatial(sf_object)


  return(SptlDataFrame_object)

}
