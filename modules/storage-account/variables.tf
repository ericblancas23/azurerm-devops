variable "resource_group_name" {
    description = "The name of the resource group in which the storage account will be created."
    type = string
}

variable "location" {
    description = "The location/region where the storage account will be created."
    type = string
}

variable "account_tier" {
    description = "The Tier to use for this storage account."
    type = string
}

variable "account_replication_type" {
    description = "The type of replication to use for this storage account."
    type = string
}

variable default_action {
    description = "The default action for network rules."
    type = string
}

variable bypass {
    description = "The bypass for network rules."
    type = string
}

variable ip_rules {
    description = "The IP rules for network rules."
    type = list(string)
}

variable virtual_network_subnet_ids {
    description = "The virtual network subnet ids for network rules."
    type = list(string)
}   
