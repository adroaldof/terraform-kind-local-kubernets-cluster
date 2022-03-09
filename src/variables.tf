variable "kind_cluster_name" {
  type        = string
  description = "The name of the cluster"
  default     = "demo-local"
}

variable "kind_cluster_config_path" {
  type        = string
  description = "Location where this cluster's kubeconfig will be saved to"
  default     = "~/.kube/config"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "Nginx ingress controller namespace"
  default     = "ingress-nginx"
}
