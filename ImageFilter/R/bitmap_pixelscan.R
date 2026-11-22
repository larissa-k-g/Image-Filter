#Pixel scanner------------------
#' @title Bitmap Pixelscanner and filter
#' @description Scans a bitmap image pixel by pixel and applies a filter function to each pixel
#' @param bitmap_image This is the bitmap that you want to filter in grey, red, green or blue
#' @param filter_func Here you use the default grey_filter or one of the colour filters (red_filter, green_filter or blue_filter)
#' @return filtered_bitmap
#' @export


pixel_scanner <- function(bitmap_image, filter_func=grey_filter) {
  width <- dim(bitmap_image)[2]
  height <- dim(bitmap_image)[3]
  filtered_bitmap <- bitmap_image
    for (x in 1:width) {
      for (y in 1:height) {
  filtered_bitmap[,x,y] <- filter_func(bitmap_image[,x,y])
      }
    }
  return(filtered_bitmap)
}
