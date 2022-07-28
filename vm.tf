# ------------- create aws ec2 bastion  --------------------------

resource "aws_instance" "bastion" {
  ami                         = "ami-052efd3df9dad4825"
  instance_type               = "t2.micro"
  associate_public_ip_address = true

  tags = {
    Name      = "iti-bastion"
    createdBy = "terraform"
  }
  root_block_device {
    delete_on_termination = true
  }


  provisioner "local-exec" {
    # print the bastion public ip address
    command = "echo ${self.public_ip}"
  }
  
}