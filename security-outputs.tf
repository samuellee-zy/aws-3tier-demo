output "aws-three-tier-alb-sg-1-id" {
  value = aws_security_group.three-tier-alb-sg-1.id
}

output "aws-three-tier-alb-sg-2-id" {
  value = aws_security_group.three-tier-alb-sg-2.id
}

output "aws-three-tier-ec2-asg-sg-id" {
  value = aws_security_group.three-tier-ec2-asg-sg.id
}

output "aws-three-tier-ec2-asg-sg-app-id" {
  value = aws_security_group.three-tier-ec2-asg-sg-app.id
}

output "aws-three-tier-db-sg-id" {
  value = aws_security_group.three-tier-db-sg.id
}

output "aws-key-pair-name" {
  value = data.aws_key_pair.tfc-demo.key_name
}

output "aws-key-pair-id" {
  value = data.aws_key_pair.tfc-demo.id
}
