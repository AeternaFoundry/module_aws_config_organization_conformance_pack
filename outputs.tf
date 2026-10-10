output "config_organization_conformance_packs_id" {
  description = "Map of id values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_organization_conformance_packs_arn" {
  description = "Map of arn values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "config_organization_conformance_packs_delivery_s3_bucket" {
  description = "Map of delivery_s3_bucket values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.delivery_s3_bucket if v.delivery_s3_bucket != null && length(v.delivery_s3_bucket) > 0 }
}
output "config_organization_conformance_packs_delivery_s3_key_prefix" {
  description = "Map of delivery_s3_key_prefix values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.delivery_s3_key_prefix if v.delivery_s3_key_prefix != null && length(v.delivery_s3_key_prefix) > 0 }
}
output "config_organization_conformance_packs_excluded_accounts" {
  description = "Map of excluded_accounts values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.excluded_accounts if v.excluded_accounts != null && length(v.excluded_accounts) > 0 }
}
output "config_organization_conformance_packs_input_parameter" {
  description = "Map of input_parameter values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.input_parameter if v.input_parameter != null && length(v.input_parameter) > 0 }
}
output "config_organization_conformance_packs_name" {
  description = "Map of name values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_organization_conformance_packs_region" {
  description = "Map of region values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "config_organization_conformance_packs_template_body" {
  description = "Map of template_body values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.template_body if v.template_body != null && length(v.template_body) > 0 }
}
output "config_organization_conformance_packs_template_s3_uri" {
  description = "Map of template_s3_uri values across all config_organization_conformance_packs, keyed the same as var.config_organization_conformance_packs"
  value       = { for k, v in aws_config_organization_conformance_pack.config_organization_conformance_packs : k => v.template_s3_uri if v.template_s3_uri != null && length(v.template_s3_uri) > 0 }
}

