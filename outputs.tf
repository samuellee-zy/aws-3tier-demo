output "aws-three-tier-igw-id" {
  value = aws_internet_gateway.three-tier-igw.id
}

output "aws-three-tier-natgw-01-id" {
  value = aws_nat_gateway.three-tier-natgw-01.id
}

output "aws-three-tier-vpc-id" {
  value = aws_vpc.three-tier-vpc.id
}

output "aws-three-tier-pub-sub-1-id" {
  value = aws_subnet.three-tier-pub-sub-1.id
}

output "aws-three-tier-pub-sub-2-id" {
  value = aws_subnet.three-tier-pub-sub-2.id
}

output "aws-three-tier-pvt-sub-1-id" {
  value = aws_subnet.three-tier-pvt-sub-1.id
}

output "aws-three-tier-pvt-sub-2-id" {
  value = aws_subnet.three-tier-pvt-sub-2.id
}

output "aws-three-tier-pvt-sub-3-id" {
  value = aws_subnet.three-tier-pvt-sub-3.id
}

output "aws-three-tier-pvt-sub-4-id" {
  value = aws_subnet.three-tier-pvt-sub-4.id
}

output "aws-three-tier-web-rt-id" {
  value = aws_route_table.three-tier-web-rt.id
}

output "aws-three-tier-app-rt-id" {
  value = aws_route_table.three-tier-app-rt.id
}

output "aws-three-tier-nat-eip-id" {
  value = aws_eip.three-tier-nat-eip.id
}

output "aws-three-tier-app-lb-id" {
  value = aws_lb.three-tier-app-lb.id
}

output "aws-three-tier-app-lb-tg-arn" {
  value = aws_lb_target_group.three-tier-app-lb-tg.arn
}

output "aws-three-tier-app-lb-listner-id" {
  value = aws_lb_listener.three-tier-app-lb-listner.id
}

output "aws-three-tier-web-lb-id" {
  value = aws_lb.three-tier-web-lb.id
}

output "aws-three-tier-web-lb-dns-name" {
  value = aws_lb.three-tier-web-lb.dns_name
}

output "aws-three-tier-web-lb-tg-arn" {
  value = aws_lb_target_group.three-tier-web-lb-tg.arn
}

output "aws-three-tier-web-lb-listner-id" {
  value = aws_lb_listener.three-tier-web-lb-listner.id
}

output "aws-lb-web-dns-name" {
  value = aws_lb.three-tier-web-lb.dns_name
}

output "aws-lb-app-dns-name" {
  value = aws_lb.three-tier-app-lb.dns_name
}
