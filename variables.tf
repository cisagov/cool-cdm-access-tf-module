# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "assume_role_policy_description" {
  description = "The description to associate with the IAM policy that allows the CDM user to assume the IAM role that allows access to the CDM CloudTrail data (e.g., \"The IAM policy that allows the CDM user to assume the IAM role that allows access to the CDM CloudTrail data in the AccountName account.\")."
  type        = string
}

variable "assume_role_policy_name" {
  description = "The name to associate with the IAM policy that allows the CDM user to assume the IAM role that allows access to the CDM CloudTrail data (e.g., \"ACCTNAME-AssumeCdmCloudTrail\")."
  type        = string
}

variable "cdm_user_name" {
  description = "The user name of the CDM user who will assume the role to access the CloudTrail data."
  type        = string
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------
variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region to deploy into (e.g. \"us-east-1\")."
  type        = string
}

variable "bucket_prefix" {
  default     = "cdm-cloudtrail-"
  description = "A prefix to use when creating a unique name for the S3 bucket where CloudTrail logs will be collected for CDM.  Terraform will create a unique bucket name beginning with the specified prefix."
  type        = string
}

variable "deadletter_queue_name" {
  default     = "cdm-cloudtrail-deadletter"
  description = "The name of the deadletter queue associated with the SQS queue that collects the messages sent when CloudTrail logs are written to the CDM CloudTrail bucket."
  type        = string
}

variable "provisionaccount_role_name" {
  default     = "ProvisionAccount"
  description = "The name of the IAM role that allows sufficient permissions to provision all AWS resources in the account."
  type        = string
}

variable "provisioncdmcloudtrail_policy_description" {
  default     = "Allows provisioning of the CDM CloudTrail resources in the account."
  description = "The description of the IAM policy that allows sufficient permissions to provision all CDM CloudTrail AWS resources in the account."
  type        = string
}

variable "provisioncdmcloudtrail_policy_name" {
  default     = "ProvisionCdmCloudTrail"
  description = "The name of the IAM policy that allows sufficient permissions to provision all CDM CloudTrail AWS resources in the account."
  type        = string
}

variable "role_description" {
  default     = "Allows access to the CDM CloudTrail data."
  description = "The description to assign the IAM role (as well as the corresponding policy) that allows access to the CDM CloudTrail data."
  type        = string
}

variable "role_name" {
  default     = "CdmCloudTrail"
  description = "The name to assign the IAM role (as well as the corresponding policy) that allows access to the CDM CloudTrail data."
  type        = string
}

variable "queue_name" {
  default     = "cdm-cloudtrail"
  description = "The name of the SQS queue that collects the messages sent when CloudTrail logs are written to the CDM CloudTrail bucket."
  type        = string
}

variable "topic_name" {
  default     = "cdm-cloudtrail"
  description = "The name of the SNS topic that sends a message when CloudTrail logs are written to the CDM CloudTrail bucket."
  type        = string
}

variable "trail_name" {
  default     = "cdm-cloudtrail"
  description = "The name of the CloudTrail trail that generates the information for import into CDM."
  type        = string
}
