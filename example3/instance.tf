resource "aws_instance" "demo_server_dipendra" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  key_name               = "kp-dipendra-bhatta-aug4"
  vpc_security_group_ids = [var.SECURITY_GROUP]
  availability_zone      = var.ZONE
  tags = {
    Name       = "demo-vm-dipendra-Bhatta",
    created_by = "terraform"
    owner      = "Deependra-Bhatta"
  }
  #To copy the file from local to remote machine
  provisioner "file" {
    source      = "deploy_app.sh"
    destination = "/tmp/deploy_app.sh"
  }

  #To execute the file

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/deploy_app.sh",
      "sudo /tmp/deploy_app.sh"
    ]
  }

  #Providing username and the key
  connection {
    user        = var.USER
    private_key = file("kp-dipendra-bhatta-aug4.pem")
    host        = self.public_ip
  }
}
