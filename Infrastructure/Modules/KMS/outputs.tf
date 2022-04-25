output "kms_arn" {
  value = aws_kms_key.main.arn
}

output "kms_id" {
  value = aws_kms_key.main.key_id
}