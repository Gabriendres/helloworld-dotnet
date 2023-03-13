variable "project_name_prefix" {
  default = "gabriendres"
  type = string
  description = "Prefix project name"
}

variable "location" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "node_count" {
  type = number
}