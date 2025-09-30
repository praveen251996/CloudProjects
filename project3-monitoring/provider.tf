terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = "praveen"          # your AWS CLI profile
  region  = "ap-southeast-2"   # Sydney
}