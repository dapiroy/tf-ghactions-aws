terraform {
  backend "s3" {
    bucket = "github-terraform-tfstates-aws"
    key    = "infrastructure/terraform.tfstate"
    region = "us-east-1"
    }
  }

  terraform {
  cloud {
    organization = "dapiroy"

    workspaces {
      name = "AWS-dapiroy"
    }
  }
}


resource "aws_instance" "myec2" {
   ami = "ami-0aa7d40eeae50c9a9"
   instance_type = "t2.micro"
}
