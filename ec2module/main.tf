resource "aws_instance" "myec2" {
  ami = var.amiid
  instance_type = var.instance_type
  count = var.instance_count
  tags = {
    "Name" = "${var.ntags}-${count.index}-${var.env}"
  }
}


output "private_ip" {
  value = aws_instance.myec2[*].private_ip
}

output "public_ip" {
  value = aws_instance.myec2[*].public_ip
}