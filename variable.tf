variable "subscription_id"{
  type=string
}

variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "resource_group_name" {
  description = "Nom du groupe de ressources Azure"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "Localisation des ressources Azure"
  type        = string
  default     = "West Europe"
}

variable "aks_cluster_name" {
  description = "Nom du cluster AKS"
  type        = string
  default     = "benito-aks-cluster"
}

variable "node_pools" {
  description = "Configuration des node pools"
  type = map(object({
    node_count = number
    vm_size    = string
  }))
  default = {
    "pool1" = {
      node_count = 1
      vm_size    = "Standard_DS2_v2"
    },
    "pool2" = {
      node_count = 2
      vm_size    = "Standard_DS3_v2"
    }
  }
}
