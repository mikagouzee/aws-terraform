# Définir la variable tags dans le module

variable "private_key_path"{
  description = "Chemin vers la clé"
  type        = string
  default     = "AWS_EHEALTH/FormationTEF_IsKey1.pem"
}


# Type de l'instance EC2 (par exemple t2.micro, m5.large, etc.)
variable "instance_type" {
  description = "Le type d'instance EC2"
  type        = string
  default     = "t2.micro"  # Par défaut, t2.micro
}

# ID du sous-réseau dans lequel déployer l'instance EC2
variable "subnet_id" {
  description = "L'ID du sous-réseau où l'instance sera déployée"
  type        = string
}

# Nom de la clé SSH à utiliser pour accéder à l'instance
variable "key_name" {
  description = "Le nom de la clé SSH pour l'accès à l'instance"
  type        = string
}

# Tags à appliquer à l'instance
variable "tags" {
  description = "Tags pour l'instance EC2"
  type        = map(string)
  default     = {
    Name = "MyInstance"  # Par défaut, un tag avec le nom 'MyInstance'
  }
}
variable "region" {
  description = "La région AWS dans laquelle déployer les ressources"
  type        = string
  default     = "us-east-2"
}