#Output the IP Address of the Container
output "ip_address" {
  value		="${module.container.ip}"
  description	="The IP for the container."
}

#Output the Nmae of the Container
output "container_name" {
  value		="${module.container.container_name}"
  description	="The name of the container"
}
