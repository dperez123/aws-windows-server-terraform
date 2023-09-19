# aws region
variable "provider_aws_region" {
  default = "us-east-2"
}

# aws existing ami
variable "provider_aws_ami" {
  default = "ami-0007e91afefcd1257"
}

# aws instance type
variable "instance_type" {
####modify the next line with your type####
  default = "t2.micro"
}

# aws instance name
variable "instance_name" {
  default = "windows-terraform"
}
