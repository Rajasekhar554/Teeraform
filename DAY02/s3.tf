terraform {
     required_providers {
          aws = {
              source = "hashicorp/aws"
              version = " ~> 6.0"

}


}
}

provider "aws" {
      region = "ap-south-1"
}

resource "aws_s3_bucket" "myfirstbucket79891" {
   bucket = "rajasekhr-2026-my-first-practice-s3"


     tags = {
          Name = "practice"
          Env = "Dev"
}

}
