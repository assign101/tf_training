variable "access_key" {
  type        = string
}

variable "secret_key" {
  type        = string
}

variable "ami" {
  type        = string
}

variable "subnet_id" {
  type        = string
}

variable "identity" {
  description = "Role ID for Approle"
  type = string
}

variable "region" {
   type = string
}

variable "vpc_security_group_ids" {
  type        = list(any)
}

variable "server_os" {
  type        = string
  description = "Server Operating System"
  default     = "ubuntu_20_04"

  validation {
    condition     = contains(["ubuntu_20_04", "ubuntu_18_04", "windows_2019"], lower(var.server_os))
    error_message = "You must use an approved operating system. Options are ubuntu_18_04, ubuntu_20_04, or windows_2019."
  }
}

