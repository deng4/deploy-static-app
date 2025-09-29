resource "azurerm_resource_group" "this" {
    name = "static-app-rg"
    location = "East US 2"
}

resource "azurerm_static_web_app" "this" {
  name = "mystweb-2cd83"
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location

  repository_url = "https://dev.azure.com/my-main-org/asecurityguru/_git/deploy-static-app"
  repository_branch = "main"
  repository_token = var.repo_token
  
}