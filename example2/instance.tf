
resource "aws_instance" "demo_server_dipendra" {
  ami                    = var.AMIS[ var.REGION ]
  instance_type          = var.INSTANCE_TYPE
  vpc_security_group_ids = [var.SECURITY_GROUP]
  availability_zone      = var.ZONE
  tags = {
    Name       = "demo-vm-dipendra-Bhatta",
    created_by = "terraform"
  }
}

