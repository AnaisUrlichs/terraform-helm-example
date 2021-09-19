variable "civotoken" {
  default = ""
  type = string
}

variable "cluster_name" {
  default = "terraform-example"
}

variable "cluster_nodes" {
  default = "3"
}

variable "region" {
  default = "LON1"
}

variable "applications" {
  default = ""
}