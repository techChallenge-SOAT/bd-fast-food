resource "aws_security_group" "sg-rds" {
  name        = "SG-${var.projectName}-rds"
  description = var.projectName
  vpc_id      = var.vpcId

  ingress {
    description = "VPC"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["${var.vpcCIDR}"]
  }

  egress {
    description = "VPC"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["${var.vpcCIDR}"]
  }
}
