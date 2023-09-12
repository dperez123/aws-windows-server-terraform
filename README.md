Terraform Windows EC2 Instance
Overview
This Terraform script automates the provisioning of a Windows EC2 instance on AWS. This README provides step-by-step instructions on how to use this script.

Prerequisites
Before you begin, make sure you have the following prerequisites in place:

AWS Account: You need an active AWS account with the necessary permissions to create EC2 instances.

Terraform Installed: Make sure you have Terraform installed on your local machine. You can download it from Terraform's official website.

AWS CLI: Install and configure the AWS Command Line Interface (CLI) on your machine.


Usage
Follow these steps to use the Terraform script to create a Windows EC2 instance:
Clone this repository to your local machine:

git clone <repository_url>
cd <repository_directory>

modify the commented lines on vars.tf, output.tf and main.tf

Initialize your Terraform workspace:

terraform init

terraform plan

terraform apply


