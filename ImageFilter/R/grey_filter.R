#' @title Greyscale filter
#' @description Applies a greyscale filter to a single pixel of a bitmap
#' @param pixel, A raw() vector representing R,G,B values of a pixel
#' @return A raw() vector where all values equal the calculated greyscale value
#' @export
grey_filter <- function(pixel) {
  r <- as.integer(pixel[1])
  g <- as.integer(pixel [2])
  b <- as.integer(pixel[3])
  grey_value <- c(r*0.299 + (g*0.587) + (b*0.114))
  grey_RGB <- c(grey_value,grey_value,grey_value)
  return(as.raw(as.integer(grey_RGB)))
}


