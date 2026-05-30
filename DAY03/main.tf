terraform {
    required_providers {

       aws = {
          source = "hashicorp/aws"
          version = "~>6.0"
}

}
# backend configuration

  backend "s3" {
    bucket         = "rajasekhar-tf-state"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile  = "true"
    encrypt        = true
  }
}


provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "Main1234" {
  bucket =  " rajasekhar-2026-May-30-bucket-for-terraformstatefile"
    
    tags = {
      name = "raja-2026"
      Env = "staging"
    }

}

Note :: create s3 bucket through backend
