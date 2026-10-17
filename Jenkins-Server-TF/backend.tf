terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }

  backend "s3" {
    bucket       = "s3buckk8sproject-1"
    region       = "us-east-1"
    key          = "e2e-k8s-project1/Jenkins-Server-TF/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
    dynamodb_table = "s3statelock-1"
  }
}

