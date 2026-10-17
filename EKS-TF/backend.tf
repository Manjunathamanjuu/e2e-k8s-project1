terraform {
  backend "s3" {
    bucket         = "s3buckk8sproject-1"
    region         = "us-east-1"
    key            = "e2e-k8s-project1/EKS-TF/terraform.tfstate"
    dynamodb_table = "s3statelock-1"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = ">= 5.31.0"
  }
}
}
