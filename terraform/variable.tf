variable "vpc_cidr_block" {
 description = "VPC CIDR block"
 type = string
}

variable "private_subnet_cidr_blocks" {
  description = "Public Subnet cidr block"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  description = "Subnet cidr block"
  type        = string
}

variable "vpc-id" {
  type = string
}
