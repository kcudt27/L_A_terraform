variable "env" {
  description = "env: dev or prod"
}
variable "image" {
  description = "Image of the container"
  type        = "map"
  default     = {
   dev  = "ghost:latest"
   prod = "ghost:alpine"
  }
}
variable "container_name" {
  description = "Name of the container"
  type        = "map"
  default     = {
   dev  = "dev_blog"
   prod = "prod_blog" 
  }
}
variable "int_port" {
  description = "Internal port for container"
  type        = "map"
  default     = {
   dev  = "2368"
   prod = "2368"
  }
}
variable "ext_port" {
  description = "External port for container"
  type        = "map"
  default     = {
   dev  = "8080"
   prod = "80" 
  }
}
