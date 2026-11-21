#install.packages("magick")

library(magick)

my_image <- image_read("./test-image1.jpg")
bitmap_image <- my_image[[1]]
image_read(bitmap_image)

class(bitmap_image)
dim(bitmap_image)
