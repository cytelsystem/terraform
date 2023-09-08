# Configure and downloading plugins for aws
provider "aws" {
  region     = "${var.aws_region}"
}

# Creating EC2 Instance
resource "aws_instance" "camada3grupo6demo" {

  ami = "${var.ami}"

  instance_type = "${var.instancetype}"

  count= "${var.master_count}"

  key_name = "${var.privatekey_en_AWS}"

  vpc_security_group_ids = ["${var.Gprpersonal}"]

  tags = {
    Name = "Camada3Grupo6Terraform"
  }

  # SSH into instance
  connection {

    # Host name
    host = self.public_ip
    # The default username for our AMI
    user = "ubuntu"
    # Private key for connection
    private_key = "${file(var.private_key)}"
    # Type of connection
    type = "ssh"
  }

  provisioner "file" {
    source      = "httpd.sh"
    destination = "/tmp/httpd.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo systemctl start bookingApi"
    ]
  }


}


