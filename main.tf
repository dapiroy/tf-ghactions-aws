terraform {
  backend "s3" {
    bucket = "github-terraform-tfstates-aws"
    key    = "infrastructure/terraform.tfstate"
    region = var.aws_region
    organization = "dapiroy"
    workspaces {
      name = "AWS-dapiroy"
    }
  }
}


resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
