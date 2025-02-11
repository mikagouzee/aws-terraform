output "aws_instance_public_dns"{
        value = aws_instance.nginxIs.public_dns
    }