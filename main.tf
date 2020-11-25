provider "aws" {
  region = "eu-west-2"
}

module "single_ec2" {
    source = "../modules/single-ec2"

    server_name = "Server A"
}
