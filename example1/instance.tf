provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_server_dipendra" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t2.micro"
  key_name               = "kp-dipendra-bhatta-aug4"
  vpc_security_group_ids = ["sg-05694bdfc51f0d457"]
  tags = {
    Name       = "demo-vm-dipenra_Bhatta",
    created_by = "terraform"
    owner      = "dipendra_Bhatta"
  }
}

