
resource "aws_instance" "web-server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = aws_key_pair.generated_key.key_name

  root_block_device {
    volume_size           = var.volume_size
    delete_on_termination = var.delete_on_termination
  }

  tags = {
    Name = var.name
  }
  
}

resource "tls_private_key" "example" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.example.public_key_openssh
}
