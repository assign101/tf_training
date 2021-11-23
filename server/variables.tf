variable "ami" {
  description = "amazon server image"
  default     = ""
}

variable "subnet_id" {
  description = "Subnet Id"
}

variable "key_name" {
  description = "SSH Key"
  default     = ""
}

variable "identity" {
  description = "Server Name"
}

variable "environment" {
  description = "Deployment Environment"
  default     = "development"
}

variable "vpc_security_group_ids" {
  type        = list(any)
}

variable server_os {
    type = string
    description = "Server Operating System"
    default = "ubuntu_20_04"
}
