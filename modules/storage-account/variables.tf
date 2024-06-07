variable "resource_group_name" {
    description = "The name of the resource group in which the storage account will be created."
    type = string
    default = "sandbox-rg"
}

variable "location" {
    description = "The location/region where the storage account will be created."
    type = string
    default = "East US"
}
