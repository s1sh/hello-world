
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
  access_key = AKIARHPQL3TQNRFL2P66
  secret_key = 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
}

resource "aws_instance" "app_server" {
  ami           = var.image_id
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
