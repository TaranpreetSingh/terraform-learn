variable "subnet_id" {
  type = string
  description = "The Oracle Cloud Infrastructure subnet for file system."
}
variable "compartment_id" {
  type = string
  nullable = false
  description = "The compartment id of mount target."
}

variable "mount_target_availability_domain" {
  type = string
  nullable = false
  description = "The Oracle Cloud Infrastructure file system availability domain."
}

