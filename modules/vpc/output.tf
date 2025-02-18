output "aws_vpc_id" {
    value = aws_vpc.main.id
}

output "aws_subnet_id" {
    value = local.subnet_id_map
}