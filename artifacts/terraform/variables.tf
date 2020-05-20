variable "profile" {
  default = "terraform_iam_user"
}

variable "region" {
  default = "ap-southeast-1"
}

variable "instance" {
  default = "t2.nano"
}

variable "instance_count" {
  default = "1"
}

variable "public_key" {
  default = "~/.ssh/MyKeyPair.pub"
}

variable "private_key" {
  default = "~/.ssh/MyKeyPair.pem"
}

variable "ansible_user" {
  default = "ubuntu"
}

variable "amis" {
  type = "map"

  default = {
    us-east-1 = "ami-b25d44b3" # virginia
  }
}

variable "ami" {
  default = "ami-0c5199d385b432989"
}
