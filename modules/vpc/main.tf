resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.dns_hostnames

    tags = {
        Name = "Custom-VPC"
    }
}

resource "aws_subnet" "main" {
    count = length(var.aws_subnet_names)
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.cidr_blocks[count.index]
    availability_zone = "eu-west-3a" // Change to your preferred availability zone
    
    tags = {
        Name = var.aws_subnet_names[count.index]
    }
}

locals {
    subnet_id_map = { for i, subnet in aws_subnet.main : var.aws_subnet_names[i] => subnet.id }
}