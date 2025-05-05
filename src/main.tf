locals {
  enabled = module.this.enabled
}

module "tfstate_backend" {
  source  = "git::github.com/itisopen/terraform-aws-tfstate-backend.git?ref=v0.0.1-oci"

  # Oracle Cloud Infrastructure Object Storage bucket
  oci_region           = var.oci_region
  oci_tenancy_ocid     = var.oci_tenancy_ocid
  oci_compartment_id   = var.oci_compartment_id
  oci_user_ocid        = var.oci_user_ocid
  oci_fingerprint      = var.oci_fingerprint
  oci_private_key_path = var.oci_private_key_path
  oci_namespace        = var.oci_namespace

  # AWS DynamoDB table
  aws_region                     = var.aws_region
  enable_point_in_time_recovery  = var.enable_point_in_time_recovery

  context = module.this.context
}
