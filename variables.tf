variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "ami_to_use" {
  type = map(string)
  default = {
    "us-east-1" = "ami-0b5eea76982371e91",
    "us-east-2" = "ami-0a606d8395a538502",
    "us-west-1" = "ami-00d8a762cb0c50254",
    "us-west-2" = "ami-0ceecbb0f30a902a6"
  }
}
