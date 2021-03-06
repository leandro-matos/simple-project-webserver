# AWS Config
variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default     = "10.0.2.0/24"
}

variable "ami" {
  description = "Ami Ubuntu"
  default     = "ami-042e8287309f5df03"
}

variable "key_path" {
  description = "Edite para a chave pública do seu usuário"
  default     = "C:/Users/leand/.ssh/id_rsa.pub"
}