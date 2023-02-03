terraform {
  backend "s3" {
    bucket = "github-terraform-tfstates-aws"
    key    = "infrastructure/terraform.tfstate"
    region = var.aws_region
  }
}
