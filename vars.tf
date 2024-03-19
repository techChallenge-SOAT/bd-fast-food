variable "projectName" {
  default = "backend-fast-food"
}

variable "subnet" {
  default = "subnet-052bc7647ee2fadf0"
}

variable "vpcId" {
  default = "vpc-0b8dd4f56f9ebc85f"
}

variable "region" {
  default = "us-east-2"
}

variable "rdsUser" {
  description = "${ secrets.RDS_USER }"
}

variable "rdsPass" {
  description = "${ secrets.RDS_PASSWORD }"
}

variable "vpcCIDR" {
  default = "172.31.0.0/16"
}
