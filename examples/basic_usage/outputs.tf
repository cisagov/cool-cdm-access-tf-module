output "access_policy" {
  description = "The IAM policy with the necessary permissions to access the CDM CloudTrail data."
  value       = module.example.access_policy
}

output "access_role" {
  description = "The IAM role that can be assumed to access the CDM CloudTrail data."
  value       = module.example.access_role
}

output "assume_access_role_policy" {
  description = "The IAM policy that allows the CDM user to assume the IAM role that allows access the CDM CloudTrail data."
  value       = module.example.assume_access_role_policy
}

output "bucket" {
  description = "The S3 bucket where CloudTrail logs are stored for CDM."
  value       = module.example.bucket
}

output "deadletter_queue" {
  description = "The SQS deadletter queue of messages notifying of CloudTrail logs being written to the CDM S3 bucket for which processing has failed."
  value       = module.example.deadletter_queue
}

output "queue" {
  description = "The SQS queue of messages notifying of CloudTrail logs being written to the CDM S3 bucket."
  value       = module.example.queue
}

output "topic" {
  description = "The SNS topic for notifications of CloudTrail logs being written to the CDM S3 bucket."
  value       = module.example.topic
}

output "trail" {
  description = "The CloudTrail trail for CDM."
  value       = module.example.trail
}
