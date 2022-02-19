# String ==============

variable "courseName" {
  type        = string
  description = "This course is about Infrastructure as Code (IaC)"
  #sensitive = true
  default = "Terraform Course" #Comment me :)
}

output "courseName" {
  value = var.courseName
  #sensitive = true
}

# Number ==================

variable "courseDuration" {
  type    = number
  default = 16
}

output "courseDuration" {
  value = var.courseDuration
}

# Boolean ===================

variable "courseDifficulty" {
  type    = bool
  default = false
}

output "courseDifficulty" {
  value = var.courseDifficulty
}

# List ======================

variable "courseThemesList" {
  type    = list(string)
  default = ["Basics", "HCL", "State", "Modules", "HCL"]
}

output "courseThemesList" {
  value = var.courseThemesList
}

# Set ======================

variable "courseThemesSet" {
  type    = set(string)
  default = ["Basics", "HCL", "State", "Modules", "HCL"]
}

output "courseThemesSet" {
  value = var.courseThemesSet
}

# Object ================

variable "courseObject" {
  type    = object({ name = string, duration = number, isDifficult = bool })
  default = { name = "Terraform", duration = 16, isDifficult = false }
}

output "courseObject" {
  value = var.courseObject
}

# Map ================

variable "courseMap" {
  type = map(string)
  default = {
    "name"        = "Terraform",
    "duration"    = "16",
    "isDifficult" = "false"
  }
}

output "courseMap" {
  value = var.courseMap
}

# Tuple ================

variable "courseTuple" {
  type    = tuple([string, number, bool])
  default = ["Terraform", 16, false]
}

output "courseTuple" {
  value = var.courseTuple
}

# Validation ==========

variable "ip_address" {
  type        = string
  description = "This is IP address"
  validation {
    condition     = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", var.ip_address))
    error_message = "Invalid IP address provided."
  }
  #default = "192.168.0.301"
  default = "192.168.0.1"
}

output "ip_address" {
  value = var.ip_address
}