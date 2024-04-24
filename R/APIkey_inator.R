
#' Get API
#'
#' @param search
#'
#' @return
#' @export
#'
#' @examples
APIkey_inator <- function(search){

  url <- paste("http://api.census.gov/data/key_signup.html")
  shell.exec(url)

  }
