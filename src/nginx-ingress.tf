resource "helm_release" "ingress_nginx" {
  repository = "https://kubernetes.github.io/ingress-nginx"
  name       = "ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.0.6"

  namespace        = var.ingress_nginx_namespace
  create_namespace = true

  values = [file("scripts/nginx-ingress-values.yaml")]

  depends_on = [kind_cluster.local]
}

resource "null_resource" "wait_for_ingress_nginx" {
  triggers = {
    key = uuid()
  }

  provisioner "local-exec" {
    command = <<EOF
      printf "\nWaiting for the nginx ingress controller...\n"
      kubectl wait --namespace ${helm_release.ingress_nginx.namespace} \
        --for=condition=ready pod \
        --selector=app.kubernetes.io/component=controller \
        --timeout=90s
    EOF
  }

  depends_on = [helm_release.ingress_nginx]
}
