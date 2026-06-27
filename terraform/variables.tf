variable "aws_region" {

  description = "AWS Region"

  type = string

  default = "us-east-1"

}

variable "project_name" {

  description = "Project Name"

  type = string

  default = "magento"

}

variable "environment" {

  description = "Environment"

  type = string

  default = "production"

}

variable "instance_type" {

  description = "EC2 Instance Type"

  type = string

  default = "c7i-flex.large"

}

variable "key_name" {

  description = "AWS Key Pair"

  type = string

}
