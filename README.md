# Terraform Kind K8s

This is a [Terraform](https://terraform.io) project that provides a [Kubernetes](https://kubernetes.io/) and [Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/) cluster locally using [Kind](https://kind.sigs.k8s.io/)

## Run project

You need to have the Terraform, Kubernetes and Kind installed locally to run it

1. Access the `scr/` folder

```bash
cd src/
```

1. Now you can start working with terraform commands as usual

```bash
terraform init
terraform fmt
terraform validate
terraform plan -out tfplan
terraform apply tfplan
```

1. After you are done working you can destroy the environment to free some resources

```bash
terraform destroy -auto-approve
```

## Test it out

Sample ingress service to test it out

```bash
kubectl apply -f src/scripts/sample-deployment-service-ingress.yaml
kubectl get all # wait to the pods are up
kubectl get ingress
kubectl describe ingress sample-ingress
curl http://localhost/first
curl http://localhost/second
kubectl delete -f src/scripts/sample-deployment-service-ingress.yaml
```

As optional could be used the kind example ingres file with the follow commands

```bash
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml
```

## Resources

- [Terraform](https://terraform.io)
- [Kubernetes](https://kubernetes.io)
- [Kind](https://kind.sigs.k8s.io/)
- [Terraform Provider Kind](https://github.com/kyma-incubator/terraform-provider-kind)
- [Configuring a KinD Cluster with NGINX Ingress Using Terraform and Helm](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm)

---

Enjoy it :wink:
