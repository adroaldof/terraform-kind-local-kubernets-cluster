output "kind_cluster" {
  value = {
    name            = kind_cluster.local.name
    context         = "kind-${kind_cluster.local.name}"
    endpoint        = kind_cluster.local.endpoint
    kubeconfig_path = kind_cluster.local.kubeconfig_path
  }
}
