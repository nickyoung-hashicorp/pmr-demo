//--------------------------------------------------------------------
// Variables
variable "aws_instance_security_group_ids" {}



//--------------------------------------------------------------------
// Modules
module "aws_instance" {
  source  = "app.terraform.io/nickyoung-hashicorp/aws-instance/aws"
  version = "1.0.0"

  security_group_ids = "${var.aws_instance_security_group_ids}"
}

module "aws_security_group" {
  source  = "app.terraform.io/nickyoung-hashicorp/aws-security-group/aws"
  version = "1.0.0"
}

module "aws_vpc" {
  source  = "app.terraform.io/nickyoung-hashicorp/aws-vpc/aws"
  version = "1.0.0"
}