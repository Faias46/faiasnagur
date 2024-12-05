terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "test-remotes"
    key    = "expense"
    region = "us-east-1"
    dynamodb_table = "test-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
