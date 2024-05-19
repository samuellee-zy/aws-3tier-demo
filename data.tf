data "aws_key_pair" "tfc-demo" {
  key_name           = "tfc-demo"
  include_public_key = true
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.4.20240513.0-kernel-6.1-x86_64"]
  }
}
