# terraform-aws-static-website
Infrastructure as Code for Hosting Static Websites on AWS S3 using Terraform

## Overview
This Terraform project automates the deployment of a static website on Amazon S3. It creates an S3 bucket, configures it for static website hosting, uploads the website files, enables public access, and provides an easy and reproducible way to deploy your static website on AWS.

Terraform Configuration
The Terraform configuration in this project does the following:
1. Creates an S3 bucket for hosting the static website.
2. Configures the S3 bucket for static website hosting.
3. Uploads the website files to the S3 bucket.
4. Enables public access to the S3 bucket.

Deployment Steps
1. Run the following commands to initialize the Terraform configuration:
   terraform init
2. Review and customize the terraform.tfvars file with your specific configuration.
3. Apply the Terraform configuration to create the infrastructure:
   terraform apply
4. Confirm the changes by typing yes when prompted.

Testing
Once the Terraform apply process completes, you can test the deployment by accessing the static website at the URL provided in the Terraform output.

Cleanup
To remove the resources created by Terraform and clean up the infrastructure, run:
terraform destroy




