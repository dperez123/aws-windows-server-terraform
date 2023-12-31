# aws provider
provider "aws" {
  region = var.provider_aws_region
}

# existing key pair
resource "aws_key_pair" "admin_key" {
  key_name   = "terraform_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# creating a elastic ip
resource "aws_eip" "windows" {
  instance = aws_instance.windows.id
  domain   = "vpc"
}

# creating a windows instance
resource "aws_instance" "windows" {
  ami           = var.provider_aws_ami
  instance_type = var.instance_type
  get_password_data = true
  tags = {
    Name = var.instance_name
  }
  key_name = "terraform_key"
  vpc_security_group_ids = [
    aws_security_group.windows.id
  ]
}

# creating a security group
resource "aws_security_group" "windows" {
  name        = "windows-terraform"
  description = "Allow RDP inbound traffic"
  ingress {
    description = "RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["192.168.224.0/20", "172.16.0.0/19"]
}
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
    }
}