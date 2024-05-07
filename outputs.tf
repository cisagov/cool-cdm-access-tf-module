output "access_policy" {
  description = "The IAM policy with the necessary permissions to access the CDM CloudTrail data."
  value       = aws_iam_policy.cloudtrail
}

output "access_role" {
  description = "The IAM role that can be assumed to access the CDM CloudTrail data."
  value       = aws_iam_role.cloudtrail
}

output "assume_access_role_policy" {
  description = "The IAM policy that allows the CDM user to assume the IAM role that allows access the CDM CloudTrail data."
  value       = aws_iam_policy.cdm
}

output "bucket" {
  description = "The S3 bucket where CloudTrail logs are stored for CDM."
  value       = aws_s3_bucket.cloudtrail
}

output "deadletter_queue" {
  description = "The SQS deadletter queue of messages notifying of CloudTrail logs being written to the CDM S3 bucket for which processing has failed."
  value       = aws_sqs_queue.cloudtrail_dlq
}

output "queue" {
  description = "The SQS queue of messages notifying of CloudTrail logs being written to the CDM S3 bucket."
  value       = aws_sqs_queue.cloudtrail
}

output "topic" {
  description = "The SNS topic for notifications of CloudTrail logs being written to the CDM S3 bucket."
  value       = aws_sns_topic.cloudtrail
}

output "trail" {
  description = "The CloudTrail trail for CDM."
  value       = aws_cloudtrail.trail
}
