variable "projectName" {
  default = "backend-fast-food"
}

variable "subnet" {
  default = "<inserir-subnet-id>"
}

variable "vpcId" {
  default = "<inserir-vpc-id>"
}

variable "region" {
  default = "<inserir-region>"
}

variable "rdsUser" {
  description = "Inserir usuario do banco em secrets"
}

variable "rdsPass" {
  description = "Inserir senha do banco em secrets"
}

variable "vpcCIDR" {
   default = "<inserir-vpc-CIDR>" # example: 10.10.0.0/16
}

variable "subnet" {
   default = "<inserir-subnet-id>"
}
