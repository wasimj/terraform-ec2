provider "aws" {
  region = "eu-west-2"
}

variable servers {
  type = map
  default = {
    server1 = { name = "A" },
    server2 = { name = "B" }
  }
}
module "single_ec2" {
    source = "github.com/wasimj/ec2-instance"
    for_each = var.servers
    module_server_name = each.value.name
}
