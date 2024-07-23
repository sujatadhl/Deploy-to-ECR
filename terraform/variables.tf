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

variable "ami_id" {
  description = "ami id for ec2"
  type = string
}
variable "instance_type" {
  description = "instance type for ec2"
  type = string
}
variable "sg_id" {
  description = "security group id"
  type = string
}
variable "subnet_id" {
  description = "subnet id"
  type = string
}
variable "associate_public_ip_address" {
  description = "association of public ip address"
  type = string
}
variable "create_iam_instance_profile" {
  description = "iam profile for ec2"
  type = string  

}
variable "ssm_policy" {
    description = "arn for ssm policy"
  type = string
}
variable "ec2_ecr_policy" {
    description = "arn for ecr policy"
  type = string
}
variable "s3_policy" {
    description = "arn for s3 bucket access policy"
  type = string
}
variable "key_name" {
  description = "name for ec2"
  type = string
}
variable "name" {
    description = "association of public ip address"
  type = string
}
variable "name_ecr" {
  description = "name for ecr registry"
  type = string
}
variable "image_tag_mutability" {
  description = "image tag mutability"
  type = string
}
variable "scan_on_push" {
  description = "image scanning configuration"
  type = string
}
