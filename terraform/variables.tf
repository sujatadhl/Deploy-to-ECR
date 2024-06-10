variable "region" {
  description = "Region be used for all the resources"
  type        = string
}

variable "project" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "terraform" {
  description = "Name to be used on all the resources as identifier"
  type        = bool
  default     = true
}

variable "owner" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "silo" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

variable "ami_id" {}
variable "instance_type" {}
variable "sg_id" {}
variable "subnet_id" {}
variable "associate_public_ip_address" {}
variable "create_iam_instance_profile" {}
variable "ssm_policy" {}
variable "ec2_ecr_policy" {}
variable "s3_policy" {}
variable "key_name" {}
variable "name" {}
variable "name_ecr" {}
variable "image_tag_mutability" {}
variable "scan_on_push" {}
