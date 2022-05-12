module "ubuntu" {
  source = "./my_instance"
  
  instance_name = "ubuntu"

  image_id = "d853edd0-27b3-4385-a380-248ac8e40956"
  image_name = "Ubuntu-20.04.1-202008"

  flavor_name = "Basic-1-1-10"
  password = var.password
}

module "centos" {
  source = "./my_instance"
  
  instance_name = "centos"

  image_id = "c9b7a469-a7ed-4119-b840-fd5169ee4348"
  image_name = "CentOS-8.4-202107"

  flavor_name = "Basic-1-1-10"
  password = var.password
}