#' Function for estimating the storm runoff volume in cubic feet using inputs for the impervious fraction and watershed area
#'
#' @param watershed_area Variable for watershed area
#' @param imperv_frac Variable forthe fraction of the watershed that is considered “impervious” (unitless).
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(watershed_area, imperv_frac) {
  Rv <- (0.05 + 0.9 * imperv_frac)
  Rd <- 1
  runoff_vol <- (3630 * Rd * Rv * watershed_area)
  return(runoff_vol)
}



