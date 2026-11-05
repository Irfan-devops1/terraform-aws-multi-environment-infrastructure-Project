
module "dev-app" {
  source         = "./aws_infra"
  my-env         = "dev"
  ami_id         = "ami-0c7632fb77f35db43"
  Instance_type  = "t3.micro"
  instance_count = 1

}


module "stag-app" {
  source         = "./aws_infra"
  my-env         = "stag"
  ami_id         = "ami-0c7632fb77f35db43"
  Instance_type  = "t3.small"
  instance_count = 2

}


module "prd-app" {
  source         = "./aws_infra"
  my-env         = "prd"
  ami_id         = "ami-0c7632fb77f35db43"
  Instance_type  = "t8i.micro"
  instance_count = 3

}

