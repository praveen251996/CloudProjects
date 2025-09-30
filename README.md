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

# Day 3 - Internet Gateway & Routing

  Implemented:
- Internet Gateway (IGW)
- Public Route Table: 0.0.0.0/0 → IGW
- Associated Public Subnet with Public Route Table
- Created Private Route Table and associated it with Private Subnet
- NAT Gateway + Elastic IP
- Route from Private RT to NAT

Note:
In production, NAT Gateway would be used for secure outbound access from private subnets. Omitted here for cost-efficiency, but Terraform code is provided for completeness.

# Day 4 - Bastion Host ( Jump Box ) 
Implemented:
	•	Security Group (bastion-sg) allowing inbound SSH (22) only from my IP.
	•	Bastion Host EC2 instance (Amazon Linux 2, t2.micro Free Tier) launched in the public subnet.
	•	Associated the Bastion Host with the Internet Gateway for public access.
	•	Configured key pair authentication (portfolio-purposes.pem) for SSH access.
	•	Outputted the Bastion Host public IP via Terraform.

Note:
In production, the Bastion Host is used as a secure entry point into private subnets. Administrators connect to the Bastion first, then hop into private subnet resources. For stronger security, AWS recommends using Systems Manager Session Manager instead of direct SSH.


