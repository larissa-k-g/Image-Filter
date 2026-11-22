#Red filter ------------------
#' @title Colour filters - red
#' @description Takes a single pixel and returns it as red (above threshold) or black
#' @param pixel A raw() vector representing R,G,B values of a pixel
#' @param threshold defines cut-off for pixel if they are colours red or black
#' @return A raw() vector corresponding to the decided colour on a scale of 0-255
#' @export
red_filter <- function(pixel, threshold = 127) {
  x <- as.integer(grey_filter(pixel)[1])
  if (x < threshold) {
    return(as.raw(c(0,0,0)))
  } else {
    return(as.raw(c(255,0,0)))
  }
}

#Green filter ------------------
#' @title Colour filters - green
#' @description Takes a single pixel and returns it as green (above threshold) or black
#' @param pixel A raw() vector representing R,G,B values of a pixel
#' @param threshold defines cut-off for pixel if they are returned green or black
#' @return A raw() vector corresponding to the decided colour on a scale of 0-255
#' @export
green_filter <- function(pixel, threshold = 127) {
  x <- as.integer(grey_filter(pixel)[1])
  if (x < threshold) {
    return(as.raw(c(0,0,0)))
  } else {
    return(as.raw(c(0,255,0)))
  }
}

#Blue filter ------------------
#' @title Colour filters - blue
#' @description Takes a single pixel and returns it as blue (above threshold) or black
#' @param pixel A raw() vector representing R,G,B values of a pixel
#' @param threshold defines cut-off for pixel if they will be coloured blue or black
#' @return A raw() vector corresponding to the decided colour on a scale of 0-255
#' @export
blue_filter <- function(pixel, threshold = 127) {
  x <- as.integer(grey_filter(pixel)[1])
  if (x < threshold) {
    return(as.raw(c(0,0,0)))
  } else {
    return(as.raw(c(0,0,255)))
  }
}
