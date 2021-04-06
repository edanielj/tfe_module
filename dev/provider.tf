provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "edanielj-tfstate"
    key    = "epsilon/ebison/dev/tfstate"
    region = "us-east-1"
  }
}