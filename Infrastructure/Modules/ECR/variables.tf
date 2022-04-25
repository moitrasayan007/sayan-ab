# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

variable "name" {
  description = "The name of your ECR repository"
  type        = string
}

variable "kms_key" {
  description = "The arn of KMS key"
  type        = string
}