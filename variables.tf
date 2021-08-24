
variable "name" {
  default = "my-cluster"
}

variable "instanceCount" {
  default = 1
}
variable "instance_type" {
  type    = map(string)

  default = {
  default = "t2.nano"
  dev     = "t2.micro"
  prod     = "t2.medium"
}

}
variable "subnet_id" {
  default = "subnet-5eedfd70"
}

variable "key_name" {
  default = "terraformlabkey"
}
