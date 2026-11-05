output "my_ec2_ip" {
  value       = aws_instance.my-instance.public_ip
  description = "The public IP of the EC2 instance"
}

output "ec2_arn" {
  value       = aws_instance.my-instance.arn
  description = "The ARN of the EC2 instance"
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.my-bucket.bucket
  description = "The name of the S3 bucket"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.name.name
  description = "The name of the DynamoDB table"
}