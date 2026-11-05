#key pair

resource "aws_key_pair" "terra-key-pair" {
  key_name   = "terra-key-pair"
  public_key = file("C:/Users/ecomadmin/Desktop/terraform/terra-key.pub")

}

# Default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
# Security Group

resource "aws_security_group" "TG-security-group" {
  name        = "TG-security-group"
  description = "this sg is for terraform instance"
  vpc_id      = aws_default_vpc.default.id


  # Incoming Traffic

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outgoing Traffic

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# EC2 Instance

resource "aws_instance" "my-instance" {
  ami                    = var.ami_id
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.terra-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.TG-security-group.id]
  tags = {
    Name = "terra-automate"
  }

}