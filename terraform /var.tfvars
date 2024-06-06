region                        = "us-east-1"
project                       = "docker"
terraform                     = true
silo                          = "intern"
owner                         = "sujata.dahal"
instance_type                 = "t2.micro"
sg_id                         = ["sg-0b58f156501701642"]
subnet_id                     = "subnet-0f97b0bb45cdeb3b7"
associate_public_ip_address   = true
create_iam_instance_profile   = true
key_name                      = "sujata1"
ssm_policy                    = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
ec2_ecr_policy                = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
image_tag_mutability          = "MUTABLE"
scan_on_push                  = true
name      = {
   name1= "sujata-ecr"
}

ami_id    = "ami-0e001c9271cf7f3b9"