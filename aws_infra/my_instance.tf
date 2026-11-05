# EC2 Instance

resource "aws_instance" "my-instance" {
    count                 = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.Instance_type
  tags = {
    Name = "${var.my-env}-my-server-126478-instance"
  }

}