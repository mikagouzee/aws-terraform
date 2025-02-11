resource "aws_instance" "nginxIs" {
  ami           = data.aws_ami.aws_linux.id
  instance_type = "t2.micro"
  subnet_id     = tolist(data.aws_subnets.default.ids)[0]
  key_name      = var.key_name

  
  tags = var.tags

  connection {
            type = "ssh"
            host = self.public_ip
            user = "ec2-user"
            private_key = file(var.private_key_path)
         }

         provisioner "remote-exec" {
            inline = ["sudo amazon-linux-extras install nginx1 -y","sudo systemctl start nginx.service"]
           
         }
}
#DATA 
data "aws_ami" "aws_linux"{
    most_recent = true

    owners = ["amazon"]
    filter{
        name="name"
        values=["amzn2-ami-hvm*"]
    }
    filter{
        name ="root-device-type"
        values =["ebs"]
    }
    filter{
        name = "virtualization-type"
        values=["hvm"]
    }

    }

data "aws_subnets" "default" {
    
    filter {
        name   = "default-for-az"
        values = ["true"]
    }
}
