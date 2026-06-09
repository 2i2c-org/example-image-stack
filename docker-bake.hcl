variable "image_name_prefix" {
  type = string
  default = "Prefix to prepend to each image name"
}

variable "git_sha" {
  type = string
  default = "Git SHA whose first 12 chars are used as a tag"
}

function "image_tags" {
  params = [image_name]
  result = [image_name, "${image_name}:${formattimestamp("YYYY-MM-DD", timestamp())}",  "${image_name}:${substr(git_sha, 0, 12)}"]
}

group "default" {
  targets = ["base", "project"]
}

target "base" {
  context = "base/"
  tags = image_tags("${image_name_prefix}base")
}

target "project" {
  name = "project-${dir}"
  matrix = {
    dir = ["project1", "project2"]
  }
  context = "${dir}"
  args = {
    BASE_IMAGE = "${image_name_prefix}base:latest"
  }

  tags = image_tags("${image_name_prefix}${dir}")
}
