variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "ami_id" {
  default = "ami-0df8c184d5f6ae949"
  type    = string
}

variable "security_group_name" {
  description = "The name of the security group."
  default     = "jenkins-sg"
  type        = string
}

variable "my_ip" {
  default   = "xx.xxx.xx.xx/32"
  type      = string
  sensitive = true
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "key_name" {
  default = "AOkey"
  type    = string
}

variable "bucket" {
  default = "jenkins-artifact-444xyz"
  type    = string
}
