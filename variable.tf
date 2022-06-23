variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
}

variable "volume_size" {
  description = "Whether to create an instance Size of the root volume in gigabytes"
  type        = number
}

variable "delete_on_termination" {
  type        = bool
  description = "Whether the volume should be destroyed on instance termination"
}

variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
}
variable "algorithm" {
  type        = string
  description = "The name of the algorithm to use for the key."
}

variable "rsa_bits" {
  type        = number
  description = "When algorithm is \"RSA\", the size of the generated RSA key in bits."
}

variable "region" {
  description = "AWS Region the instance is launched in"
  type        = string
}



  