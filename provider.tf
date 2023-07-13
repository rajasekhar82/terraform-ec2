terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.4.0"
    }
  }
  backend "s3" {
        bucket = "terraform"
        region = "ap-south-1"
  }
}
provider "aws" {
    region = "ap-south-1"

}
