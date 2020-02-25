#downlaod image
module  "image" {
  source = "./image"
  image  = "${lookup(var.image, var.env)}" 
}

# Start the Container
module "container" {
  source   = "./container"
  image    = "${lookup(module.image.image_output, var.env)}"
  name     = "${lookup(var.container_name, var.env)}"
  int_port = "${lookup(var.int_port, var.env)}"
  ext_port = "${lookup(var.ext_port, var.env)}"

}
