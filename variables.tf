variable "dynamodb_table_name" {
  type        = string
  default     = "db_table126478"
  description = "The is name of the DynamoDB table."

}
variable "ami_id" {
  type        = string
  default     = "ami-0c7632fb77f35db43"
  description = "The is AMI ID for the EC2 instance."
}