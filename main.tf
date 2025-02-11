module "front" {
  source = "./modules/linux-vm"

  count = var.front_instances

  # Paramètres pour le nom de l'instance
  tags =var.tags
  

  # Instance EC2
  instance_type = var.front_vm_size

  # VPC et subnet
  subnet_id = module.subnet.subnet_ids["public_subnet"]// erreur résolu après le rajout du module subnet


  # Clé SSH pour l'authentification
  key_name = var.key_name
  private_key_path = var.private_key_path
  
  

  
}


