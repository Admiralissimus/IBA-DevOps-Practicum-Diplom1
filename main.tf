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

resource "null_resource" "update_kubeconfig" {
  depends_on = [module.eks]
  provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
  }
}

data "aws_availability_zones" "available" {}

locals {
  #name   = "ushakou-k8s"
  azs = slice(data.aws_availability_zones.available.names, 0, 2)

  tags = {
    owner      = var.owner
    GithubRepo = "terraform-aws-eks"
    GithubOrg  = "terraform-aws-modules"
  }
}
