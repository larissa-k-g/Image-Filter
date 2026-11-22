#' @title Grey filter
#' @param pixel, A raw() vector representing R,G,B values of a pixel
#' @return A raw() vector where all values equal the calculated greyscale value
#' @export
grey_filter <- function(pixel) {
  r <- as.integer(pixel[1])
  g <- as.integer(pixel [2])
  b <- as.integer(pixel[3])
  Grey_value <- c(r*0.299 + (g*0.587) + (b*0.114))
  Grey_RGB <- c(Grey_value,Grey_value,Grey_value)
  return(as.raw(as.integer(Grey_RGB)))
}


