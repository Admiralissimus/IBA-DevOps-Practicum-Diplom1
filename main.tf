provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "ushakou-diplom"
    key            = "diplom1/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "ushakou1"
  }
}
