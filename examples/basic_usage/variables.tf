variable "accountname_role_arn" {
  default     = "arn:aws:iam::210987654321:role/ProvisionAccount"
  description = "The ARN of the role to assume for the AccountName provider."
  type        = string
}

variable "users_role_arn" {
  default     = "arn:aws:iam::123456789012:role/ProvisionAccount"
  description = "The ARN of the role to assume for the default provider."
  type        = string
}
