# Defining Region
variable "aws_region" {
  default = "us-east-2"
}

# Defining AMI
variable "ami" {
  default = "ami-063145cc61f43c570"
}

# Defining Instace Type
variable "instancetype" {
  default = "t2.micro"
}

# Defining Master count
variable "master_count" {
  default = 1
}

# utilizar Private Key que esta en AWS
variable "privatekey_en_AWS" {
  default = "RSACamada3Grupo6"
}

# Defining Private Key para enviar a AWS
variable "private_key" {
  default = "RSACamada3Grupo6.pem"
}

# Defining Grupo de seguridad disponible en AWS
variable "Gprpersonal" {
  default = "sg-098856eff8bbfee6d"
}




# Definign Key Name for connection
variable "key_name" {
  default = "tests"
  description = "Desired name of AWS key pair"
}


# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Defining CIDR Block for Subnet
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

# Defining CIDR Block for 2d Subnet
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}


#//**************************//

# Defining Master count
variable "vpcnombre" {
  default = "0521ptc2n2-g3-vpc"
}
# Defining Master count
variable "vpcid" {
  default = "vpc-0ca9d0ecaec1494da"
}

# Defining Master count
variable "Subredesid" {
  default = "subnet-0633a45ceea6e4845"
}

