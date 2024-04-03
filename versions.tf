terraform {
  # We want to hold off on 1.1 or higher until we have tested it.
  required_version = "~> 1.0"

  # If you use any other providers you should also pin them to the
  # major version currently being used.  This practice will help us
  # avoid unwelcome surprises.
  required_providers {
    # This module is used by cisagov/cool-sharedservices-cdm, which requires
    # version 5.x of the AWS provider in order to use the "Decompression"
    # processor in the aws_kinesis_firehose_delivery_stream resource (part of
    # the extended_s3_configuration).
    # This comment should be removed when all of our Terraform modules have
    # migrated to version 5.x.
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
