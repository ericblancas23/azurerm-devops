variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type = string
}


variable "vnet_name" {
  description = "The name of the virtual network."
  type = string
}


variable "subnet1_name" {
  description = "The name of the first subnet."
  type = string
}


variable "subnet2_name" {
  description = "The name of the second subnet."
  type = string
}
