# Basic
variable subnet_address {
  type        = string
  default     = ""
  description = "description"
}

variable subnet_mask {
  type        = number
  default     = 24
  description = "description"
}

variable hostname {
  type        = string
  default     = ""
  description = "description"
}

variable description {
  type        = string
  default     = "Managed by Terraform"
  description = "description"
}

variable ip_count {
  type        = number
  default     = 1
  description = "description"
}

variable hostnames {
  type        = list(string)
  default     = []
  description = "description"
}

variable phpipam_username {
  type        = string
  default     = ""
  description = "description"
}