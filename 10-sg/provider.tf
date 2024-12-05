terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
<<<<<<< HEAD:10-sg/provider.tf
    bucket = "81s-remote-state-dev"
    key    = "expense-sg"
    region = "us-east-1"
    dynamodb_table = "81s-locking-dev"
=======
    bucket = "test-remotes"
    key    = "expense"
    region = "us-east-1"
    dynamodb_table = "test-lock"
>>>>>>> e48849403a8cbadec53e3209369307a537123a51:provider.tf
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
