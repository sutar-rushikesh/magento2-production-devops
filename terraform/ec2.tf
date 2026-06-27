# -----------------------------------
# Latest Debian 13 AMI
# -----------------------------------

data "aws_ami" "debian" {

  most_recent = true

  owners = ["136693071363"]

  filter {
    name   = "name"
    values = ["debian-13-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# -----------------------------------
# EC2 Instance
# -----------------------------------

resource "aws_instance" "magento_server" {

  ami = data.aws_ami.debian.id

  instance_type = var.instance_type

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.magento_sg.id
  ]

  associate_public_ip_address = true

  key_name = var.key_name

  user_data = file("${path.module}/userdata.sh")

  tags = {

    Name = "${var.project_name}-server"
  }
}
