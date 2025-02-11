variable "aws_access_key"{}

variable "aws_secret_key"{}
variable "private_key_path"{}


variable "key_name"{}




# Nombre d'instances front-end
variable "front_instances" {
  description = "Le nombre d'instances front-end"
  type        = number
  default     = 1
}

# Nom de l'instance front-end
variable "front_vm_name" {
  description = "Le nom de l'instance front-end"
  type        = string
  default     = "front-vm"
}

# Taille de l'instance front-end (ex. t2.micro, m5.large)
variable "front_vm_size" {
  description = "La taille de l'instance front-end"
  type        = string
  default     = "t2.micro"
}

# Région AWS dans laquelle déployer les ressources
variable "region" {
  description = "La région AWS dans laquelle déployer les ressources"
  type        = string
  default     = "us-east-2"
}


# ID du sous-réseau public
variable "subnet_id" {
  description = "L'ID du sous-réseau public où l'instance sera déployée"
  type        = string
}

# ID du groupe de sécurité
variable "security_group_id" {
  description = "L'ID du groupe de sécurité à associer à l'instance"
  type        = string
}

# Nom d'utilisateur pour l'authentification sur la machine virtuelle (admin)
variable "front_vm_username" {
  description = "Le nom d'utilisateur pour l'authentification sur la machine virtuelle"
  type        = string
  default     = "ec2-user"
}

# Tags à appliquer à l'instance
variable "tags" {
  description = "Tags pour l'instance"
  type        = map(string)
  default     = {
    Name = "front-vm"
  }
}

# Image Amazon Linux 2 (ID AMI)
variable "ami" {
  description = "ID de l'AMI à utiliser pour l'instance"
  type        = string
}