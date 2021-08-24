data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
resource "aws_instance" "myapp" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = lookup(var.instance_type, terraform.workspace)
  key_name      = var.key_name

  tags = {
    "Name" = "my_web_server_test"
  }
}

