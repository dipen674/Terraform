#Default value is picked when nothing is defined
#Wwe can decleare variable like in capital letter as shown or we can define them like "region" this also.



variable "REGION" {
  description = "The region where resources is to be created"
  default     = "us-east-1"
  type        = string
}

variable "ZONE" {
  description = "The resouces zone where we need to deploy resources"
  default     = "us-east-1a"
  type        = string
}

variable "SECURITY_GROUP" {
  description = "SG name"
  default     = "sg-05694bdfc51f0d457"
}

variable "AMIS" {

  description = "The AMI ID of the instance"
  default = {
    us-east-1 = "ami-0360c520857e3138f"
    us-east-2 = "ami-0cfde0ea8edd312d4"
  }
  type = map(any)
}


variable "INSTANCE_TYPE" {
  default = "t2.nano"
}
