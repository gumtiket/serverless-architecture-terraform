terraform {
  required_version = ">= 1.15" # terraform 버전은 1.15 이상

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}
