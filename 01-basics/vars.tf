
variable "password" {
  //  default = ""
sensitive = true
}


variable "image_id" {
  default = "c9b7a469-a7ed-4119-b840-fd5169ee4348"
}

variable "image_name" {
  default = "CentOS-8.4-202107"
}

variable "project_id" {
  //значение OS_PROJECT_ID
  default = "73c38e3fc3d04e6cb5949b222a673c8f"
}