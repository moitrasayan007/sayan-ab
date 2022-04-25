# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

/*=========================================
      AWS Elastic Container Repository
==========================================*/

resource "aws_ecr_repository" "ecr_repository" {
  name                 = var.name
  image_tag_mutability = "MUTABLE"

  encryption_configuration {
    encryption_type = "KMS"
    kms_key = var.kms_key
  }

  tags = {
    Created_by = "Terraform"
  }
}