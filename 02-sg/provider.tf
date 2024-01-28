terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "lockbucket-terraform"
    key    = "sg"
    region = "us-east-1"
    dynamodb_table = "locktable-dev"
}

}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}