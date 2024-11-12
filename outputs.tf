output "name" {
  description = "The name of the redis resource"
  value       = azurerm_redis_cache.this.name
}

output "private_endpoints" {
  description = "A map of private endpoints. The map key is the supplied input to var.private_endpoints. The map value is the entire azurerm_private_endpoint resource."
  value       = azurerm_private_endpoint.this
}

# Module owners should include the full resource via a 'resource' output
# https://azure.github.io/Azure-Verified-Modules/specs/terraform/#id-tffr2---category-outputs---additional-terraform-outputs
output "resource" {
  description = "This is the full output for the resource."
  value       = azurerm_redis_cache.this
}

output "resource_id" {
  description = "The resource id of the redis cache resource."
  value       = azurerm_redis_cache.this.id
}

# Broken: https://github.com/Azure/terraform-azurerm-avm-res-cache-redis/issues/54
# output "system_assigned_mi_principal_id" {
#   description = "The resource id for the system managed identity principal id."
#   value       = jsondecode(data.azapi_resource.this.output).identity.principalId
# }
