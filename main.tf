data aws_ami "ubuntu" {
        most_recent = true
        owners      = ["099720109477"] # Canonical
    
        filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250821"]
        }
    
        filter {
        name   = "virtualization-type"
        values = ["hvm"]
        }
}


module "ec2" {
    source = "./modules/ec2"
    key_name = var.key_name
    instance_type = var.instance_type
    ami = data.aws_ami.ubuntu.id
}
module "s3" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}



