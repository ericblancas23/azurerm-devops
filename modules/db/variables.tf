variable "postgresql_server_name" {
  description = "The name of the PostgreSQL server."
  type = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the PostgreSQL server."
  type = string
}

variable "location" {
  description = "The location in which the PostgreSQL server should be created."
  type = string
}

variable "version" {
  description = "The version of PostgreSQL to use."
  type = string
}
