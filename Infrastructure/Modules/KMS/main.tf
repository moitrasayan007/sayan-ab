data "aws_caller_identity" "current" {}

resource "aws_kms_key" "main" {
  description = "KMS key for Octank"

  tags = {
    Created_by = "Terraform"
  }

  policy = <<-EOF
  {
    "Id": "key-consolepolicy-3",
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "Enable IAM User Permissions",
        "Effect": "Allow",
        "Principal": {
          "AWS": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        },
        "Action": "kms:*",
        "Resource": "*"
      }
    ]
  }
  EOF
}