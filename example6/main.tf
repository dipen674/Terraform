resource "aws_instance" "demo_server_dipendra" {
  ami = var.AMIS[var.REGION]
  #This is used to pull the mapping variables
  key_name               = "kp-dipendra-bhatta-aug4"
  instance_type          = lookup(var.INSTANCE_TYPE, terraform.workspace, "t2.micro")
  vpc_security_group_ids = [var.SECURITY_GROUP]
  availability_zone      = var.ZONE

  tags = {
    #Set name based on the terraform workspaces
    Name       = "${terraform.workspace}-vm-dipendra-bhatta",
    created_by = "Terraform-code"
    owner      = "Deependra-Bhatta"
  }
}
output "instance_id" {
  value = aws_instance.demo_server_dipendra.id
}

output "instance_name" {
  value = terraform.workspace
}

