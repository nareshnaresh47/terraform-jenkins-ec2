provider "aws" {
    region     = "ap-south-1"
 }

 resource "aws_instance" "example" {
   ami           = "ami-04893cdb768d0f9ee"
   instance_type = "t2.micro"
   key_name = "terraformec2"

   provisioner "local-exec" {
     command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
   }

 }
