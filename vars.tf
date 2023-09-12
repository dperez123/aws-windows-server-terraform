variable "provider_aws_region" {
  default = "us-east-2"
}

variable "provider_aws_ami" {
####modify the next line with your AMI#####
  default = "ami-0007e91afefcd1257"
}
variable "instance_type" {
####modify the next line with your type####
  default = "t2.micro"
}
variable "instance_name" {
  default = "windows-terraform"
}
