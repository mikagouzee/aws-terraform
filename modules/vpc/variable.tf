variable "cidr_block" {
    type = string
    description = "VPC"
    default = "10.0.0.0/16"
}

variable "cidr_blocks" {
    type = list(string)
    description = "VPC subnet cidr"
    default = "10.0.1.0/24"
}


variable "dns_hostnames" {
    type = string
    description = "Enable / Disable DNS"
    default = true
}

variable "aws_subnet_names" {
    type = list(string)
    description = "Subnets in VPC"
    default = "subnet1"
}