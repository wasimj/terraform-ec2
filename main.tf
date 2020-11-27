provider "aws" {
  region = "eu-west-2"
}

module "module_server1" {
    source = "github.com/wasimj/ec2-instance"
    module_server_name = "Server 1"
}

module "module_server2" {
    source = "github.com/wasimj/ec2-instance"
    module_server_name = "Server 2"

    depends_on = [
      module.module_server1
    ]
}
