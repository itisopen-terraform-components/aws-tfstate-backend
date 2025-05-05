output "bucket_name" {
  description = "The name of the OCI Object Storage bucket."
  value       = module.tfstate_backend.bucket_name
}

output "bucket_namespace" {
  description = "The namespace of the OCI Object Storage bucket."
  value       = module.tfstate_backend.bucket_namespace
}

output "bucket_compartment_id" {
  description = "The compartment ID of the OCI Object Storage bucket."
  value       = module.tfstate_backend.bucket_compartment_id
}

output "dynamodb_table_name" {
  value       = module.tfstate_backend.dynamodb_table_name
  description = "DynamoDB table name"
}

output "dynamodb_table_id" {
  value       = module.tfstate_backend.dynamodb_table_id
  description = "DynamoDB table ID"
}

output "dynamodb_table_arn" {
  value       = module.tfstate_backend.dynamodb_table_arn
  description = "DynamoDB table ARN"
}
