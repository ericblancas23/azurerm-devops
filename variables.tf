variable "resource_group_name" {
    description = "The name of the resource group in which the storage account will be created."
    type = string
    default = "rg01"
}

variable "storage_account_name" {
    description = "The name of the storage account."
    type = string
    default = "sandboxstorageaccount"
}

variable "location" {
    description = "The location/region where the storage account will be created."
    type = string
    default = "East US"
}

variable "account_tier" {
    description = "The Tier to use for this storage account."
    type = string
    default = "Standard"
}

variable "account_replication_type" {
    description = "The type of replication to use for this storage account."
    type = string
    default = "LRS"
}

variable "tags" {
    description = "A mapping of tags to assign to the resource."
    type = map(string)
    default = {
        environment = "sandbox"
        cost_center = "it"
    }
}

variable "ip_rules" {
    description = "The IP rules for network rules."
    type = list(string)
    default = []
}


variable "virtual_network_subnet_ids" {
    description = "The virtual network subnet ids for network rules."
    type = list(string)
    default = []
}


variable default_action {
    description = "The default action for network rules."
    type = string
    default = "Deny"
}

variable "container_name" {
    description = "The name of the storage container."
    type = string
    default = "examplecontainer"
}

variable "container_access_type" {
    description = "The access type for the storage container."
    type = string
    default = "private"
}

variable "blob_name" {
    description = "The name of the storage blob."
    type = string
    default = "exampleblob"
}

variable "blob_type" {
    description = "The type of the storage blob."
    type = string
    default = "Block"
}


variable "vnet_name" {
  description = "The name of the virtual network."
  type = string
  default = "sandboxvnet"
}


variable "subnet1_name" {
  description = "The name of the first subnet."
  type = string
  default = "subnet1"
}


variable "subnet2_name" {
  description = "The name of the second subnet."
  type = string
  default = "subnet2"
}
