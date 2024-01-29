provider "aws" {

  region     = "us-east-1"
  access_key = "AKIATUKKZORNJQVWKYP5"
  secret_key = "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"
}

resource "aws_instance" "myec2" {

  ami  = "ami-0fa1ca9559f1892ec"
  instance_type = "t2.micro"
  key_name = "web-key"
  tags = {
    Name = "Project1"
  }
user_data = <<-EOF

      #!/bin/bash

        sudo yum install git -y

        sudo amazon-linux-extras install java-openjdk11 -y

        sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

        sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
        sudo yum install jenkins -y

sudo systemctl start jenkins

   EOF

}

resource "aws_security_group" "mysg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {

    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.mysg.id
  network_interface_id = aws_instance.myec2.primary_network_interface_id
resource "aws_instance" "myec2" }
