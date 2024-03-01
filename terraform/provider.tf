terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }

  required_version = ">=0.14.9"

}
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
     bucket         = "terraform-ashraf-state-backend"
     key            = "terraform.tfstate"
     region         = "us-east-1"
     #dynamodb_table = "terraform_state"
   }
 }
