output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "igw_id" {
  value = aws_internet_gateway.igw.id
}



output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}

output "private_route_table_id" {
  value = aws_route_table.private_rt.id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}


output "private_instance_id" {
  value = aws_instance.private_instance.id
}

output "private_instance_private_ip" {
  value = aws_instance.private_instance.private_ip
}