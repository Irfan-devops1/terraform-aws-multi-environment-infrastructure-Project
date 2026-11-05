variable "my-env" {
    description = "The is the environment for infra"
    type        = string
  
}
variable "ami_id" {
    description = "The is the AMI ID for the EC2 instance"
    type        = string
  
}
variable "Instance_type" {
    description = "The is the instance type for the EC2"
    type        = string
  
}

variable "instance_count" {
    description = "The is the instance count for the EC2"
    type        = number
  
}