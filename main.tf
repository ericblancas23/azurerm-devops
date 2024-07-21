module "storage_account" {
  source = "./modules/storage-account"
  resource_group_name = var.resource_group_name
  storage_account_name = var.storage_account_name
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
  virtual_network_subnet_ids = var.virtual_network_subnet_ids
  default_action = var.default_action
  ip_rules = var.ip_rules
  container_name = var.container_name
  container_access_type = var.container_access_type
  blob_name = var.blob_name
  blob_type = var.blob_type
}

module "vnet" {
  source = "./modules/vnet"
  resource_group_name = var.resource_group_name
  vnet_name = var.vnet_name
  subnet1_name = var.subnet1_name
  subnet2_name = var.subnet2_name
}

