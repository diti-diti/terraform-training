data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "blog" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld1s"
  }
}

resource "aws_instance" "additional_vm1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type  // Typ instancji możesz zmienić według swoich potrzeb

  tags = {
    Name = "AdditionalVM1"
  }
}

# resource "aws_instance" "additional_vm2" {
#   ami           = data.aws_ami.app_ami.id
#   instance_type = var.instance_type // Typ instancji możesz zmienić według swoich potrzeb

#   tags = {
#     Name = "AdditionalVM2"
#   }
# }
