terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}
#oszukanmiec by odpalic to bez PR
provider "aws" {
  region  = "eu-north-1"
}
