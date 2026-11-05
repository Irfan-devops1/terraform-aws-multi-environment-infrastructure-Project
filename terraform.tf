terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.71.0"
    }
  }
}
# Provider Block

provider "aws" {
  region = "ap-south-1"
}