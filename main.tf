provider "aws" {
  region = "eu-west-2"
}

module "single_ec2" {
    source = "github.com/wasimj/ec2-instance"

    module_server_name = var.server_name
}
