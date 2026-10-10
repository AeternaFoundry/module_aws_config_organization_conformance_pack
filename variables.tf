variable "config_organization_conformance_packs" {
  description = <<EOT
Map of config_organization_conformance_packs, attributes below
Required:
    - name
Optional:
    - delivery_s3_bucket
    - delivery_s3_key_prefix
    - excluded_accounts
    - region
    - template_body
    - template_s3_uri
    - input_parameter (block):
        - parameter_name (required)
        - parameter_value (required)
EOT

  type = map(object({
    name                   = string
    delivery_s3_bucket     = optional(string)
    delivery_s3_key_prefix = optional(string)
    excluded_accounts      = optional(set(string))
    region                 = optional(string)
    template_body          = optional(string)
    template_s3_uri        = optional(string)
    input_parameter = optional(list(object({
      parameter_name  = string
      parameter_value = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.config_organization_conformance_packs : (
        v.input_parameter == null || (length(v.input_parameter) <= 60)
      )
    ])
    error_message = "Each input_parameter list must contain at most 60 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_conformance_packs : (
        v.delivery_s3_bucket == null || ((length(v.delivery_s3_bucket) >= 1 && length(v.delivery_s3_bucket) <= 63) && (can(regex("^awsconfigconforms", v.delivery_s3_bucket))))
      )
    ])
    error_message = "all of: must be between 1 and 63 characters; must begin with \"awsconfigconforms\""
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_conformance_packs : (
        v.delivery_s3_key_prefix == null || (length(v.delivery_s3_key_prefix) >= 1 && length(v.delivery_s3_key_prefix) <= 1024)
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.config_organization_conformance_packs : (
        v.template_s3_uri == null || ((length(v.template_s3_uri) >= 1 && length(v.template_s3_uri) <= 1024) && (can(regex("^s3://", v.template_s3_uri))))
      )
    ])
    error_message = "all of: must be between 1 and 1024 characters; must begin with s3://"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

