variable "oci_namespace" {
  description = "The name of the OCI namespace"
  type        = string
  default     = ""
}

variable "oci_tenancy_ocid" {
  description = "The OCID of the tenancy"
  type        = string
}

variable "oci_compartment_id" {
  description = "The OCID of the compartment"
  type        = string
}

variable "oci_user_ocid" {
  description = "The OCID of the user"
  type        = string
}

variable "oci_fingerprint" {
  description = "The fingerprint for the API key"
  type        = string
}

variable "oci_private_key_path" {
  description = "The path to the private key file"
  type        = string
}

variable "oci_region" {
  description = "The OCI region to deploy resources in"
  type        = string
  default     = "eu-paris-1"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "force_destroy" {
  type        = bool
  description = "A boolean that indicates the terraform state S3 bucket can be destroyed even if it contains objects. These objects are not recoverable."
  default     = false
}

variable "prevent_unencrypted_uploads" {
  type        = bool
  description = "Prevent uploads of unencrypted objects to S3"
  default     = true
}

variable "enable_server_side_encryption" {
  type        = bool
  description = "Enable DynamoDB and S3 server-side encryption"
  default     = true
}

variable "enable_point_in_time_recovery" {
  type        = bool
  description = "Enable DynamoDB point-in-time recovery"
  default     = true
}

variable "access_roles" {
  description = "Map of access roles to create (key is role name, use \"default\" for same as component). See iam-assume-role-policy module for details."
  type = map(object({
    write_enabled           = bool
    allowed_roles           = map(list(string))
    denied_roles            = map(list(string))
    allowed_principal_arns  = list(string)
    denied_principal_arns   = list(string)
    allowed_permission_sets = map(list(string))
    denied_permission_sets  = map(list(string))
  }))
  default = {}
}

variable "access_roles_enabled" {
  type        = bool
  description = <<-EOT
    Enable access roles to be assumed. Set `false` for cold start (before account-map has been created),
    because the role to ARN mapping has not yet been created.
    Note that the current caller and any `allowed_principal_arns` will always be allowed to assume the role.
    EOT
  default     = true
}
