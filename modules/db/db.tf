resource "azurerm_postgresql_server" "postgresql_server" {
  name                = var.postgresql_server_name
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = var.version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  sku_name           = var.sku_name
  storage_mb         = var.storage_mb
  backup_retention_days = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  auto_grow_enabled = var.auto_grow_enabled
  ssl_enforcement_enabled = var.ssl_enforcement_enabled
  ssl_minimal_tls_version_enforced = var.ssl_minimal_tls_version_enforced
  tags = {
    environment = "sandbox"
  }
}

resource "azurerm_postgresql_database" "postgresql_database" {
  name                = var.postgresql_database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql_server.name
  charset             = var.charset
  collation           = var.collation
}
