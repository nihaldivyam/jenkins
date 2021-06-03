provider "aws" {
    region  = var.region
    profile = var.profile
}


resource "aws_key_pair" "deployer" {
  key_name   = "divyam-key"
  public_key = var.deployer-public-key
}

resource "aws_instance" "slave" {
    ami = var.ami_id
    instance_type = var.slave_instance
    ebs_optimized = true
    key_name = aws_key_pair.deployer.key_name

    user_data = templatefile("data/data.tpl", {
    cluster_name = var.environment_name
  })

  tags = {
    Terraform = "true"
    Environment = "testing"
    Name = "cherry testing"
  }

  root_block_device {
    volume_type  = "gp2"
    volume_size = 20
    delete_on_termination = true
  }
}
resource "null_resource" "wait_30_seconds" {
    provisioner "local-exec" {
        command = "sleep 30s"
    }
    depends_on = [aws_instance.slave]
    
}

