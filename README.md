# Terraform Kind K8s

This is a [Terraform](https://terraform.io) project that provides a [Kubernets](https://kubernetes.io/) and [Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/) cluster locally using [Kind](https://kind.sigs.k8s.io/)

## Run project

You need to have the Terraform, Kubernets and Kind installed locally to run it

1. Access the `scr/` folder

```bash
cd src/
```

1. Now you can start working with terraform commands as usual

```bash
terraform init
terraform plan -out tfplan
terraform apply tfplan
```

1. After you are done working you can destroy the environment to free some resources

```bash
terraform destroy
```

## Resources

- [Terraform](https://terraform.io)
- [Kubernetes](https://kubernetes.io)
- [Kind](https://kind.sigs.k8s.io/)
- [Configuring a KinD Cluster with NGINX Ingress Using Terraform and Helm](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm)
- [Terraform Provider Kind](https://github.com/kyma-incubator/terraform-provider-kind)

---

Enjoy id :wink:
