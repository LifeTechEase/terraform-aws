terraform {
  required_version = "=1.2.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=4.35.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-tfstate-tqer39-107662415716-ap-northeast-1"
    encrypt = true
    key     = "private-lab/terraform/environments/sandbox/sandbox-test-statement.tfstate"
    region  = "ap-northeast-1"
  }
}