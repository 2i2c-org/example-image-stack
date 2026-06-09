variable "image_name_prefix" {
  type = string
}


group "default" {
  targets = ["base"]
}

target "base" {
  context = "base/"
  tags = ["${image_name_prefix}base"]
}

target "project1" {
  context = "project1/"
  args = {
    BASE_IMAGE = "${image_name_prefix}"
  }
}

target "project2" {
  context = "project2/"
  args = {
    BASE_IMAGE = "${image_name_prefix}"
  }
}