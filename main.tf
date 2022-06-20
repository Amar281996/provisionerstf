terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "us-west-2"
    profile = "default"
}
resource "aws_key_pair" "javainstancekp" {
    key_name = "java_instance_key"
    public_key = var.ssh_public_key
}
resource "aws_instance" "javainstance" {
    instance_type = var.instance_type
    ami = var.ami
    key_name = aws_key_pair.javainstancekp.key_name
    associate_public_ip_address = true
    connection {
        type = "ssh"
        host = self.public_ip 
        user = "windows 10"
        private_key = file("~/.ssh/terraform")
    }
    provisioner "file" {
        source = "sh/installjdk.sh"
        destination = "/tmp/installjdk.sh"
    }
    provisioner "remote-exec" {
        inline = [
            "sudo chmod u+x /tmp/installjdk.sh",
            "bash /tmp/installjdk.sh"
        ]
    }
}
