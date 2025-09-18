# CloudProjects
# AWS Engineer Portfolio
This repo contains real-world AWS projects (VPC, CI/CD, Monitoring, Serverless) built with Terraform and automation.

## Project List
- Project 1: Enterprise VPC & Networking
- Project 2: CI/CD with Containers + Serverless
- Project 3: Monitoring & Auto-remediation
- Project 4: Secure Serverless Data Pipeline

## Day 1 Setup
- Created IAM user with admin rights
- Configured AWS CLI (`ap-southeast-2`)
- Set $1 monthly budget
- Created initial S3 test bucket

# Day 2 - VPC Setup with Terraform
- Created a custom VPC (10.0.0.0/16)
- Added 2 subnets:
  - Public Subnet (10.0.1.0/24, ap-southeast-2a)
  - Private Subnet (10.0.2.0/24, ap-southeast-2b)
- Verified in AWS Console
