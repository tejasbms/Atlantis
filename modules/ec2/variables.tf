variable "key_name" {
    description = "The name of the EC2 key pair"
    type        = string
}
variable "instance_type" {
    description = "The type of the EC2 instance"
    type        = string
    default     = ""
}

variable "ami" {
    description = "The AMI ID for the EC2 instance"
    type        = string
}