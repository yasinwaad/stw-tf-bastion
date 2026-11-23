variable "project_name" {
  description = "The name of the project."
  type        = string
}

variable "environment" {
  description = "Environment name, e.g. prod."
  type        = string
}

variable "owner" {
  description = "Owner tag value."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "southafricanorth"

  validation {
    condition     = var.location == "southafricanorth"
    error_message = "Location must be southafricanorth."
  }
}

variable "resource_group_name" {
  description = "Name of the existing resource group."
  type        = string
}

variable "vnet_name" {
  description = "Name of the existing virtual network."
  type        = string
}

variable "bastion_subnet_address_prefixes" {
  description = "Address prefixes for the Bastion subnet. Must be /26 or larger."
  type        = list(string)
  default     = ["10.0.2.0/26"]
}

variable "public_ip_id" {
  description = "ID of the public IP to attach to the Bastion host."
  type        = string
}