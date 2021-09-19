# Terraform Example

This repository showcases how to setup Terraform to manage your Civo Kubernetes cluster and install Helm Charts.

## File overview
* provider.tf -- the Terraform providers used within this respository
* output.tf -- this file lists which information to provide after running `terraform apply`
* cluster.tf -- the Civo Kubernetes cluster resource
* variables.tf -- the variables that will be passed into the provider.tf and cluster.tf -- you can also add additional variables to be passed into the helm_release files
* ./charts -- the custom Helm Charts will be put into this directory
* helm_release_nginx.tf -- refers to a custom Helm Chart
* helm_release_prometheus.tg -- installs the Prometheus stack operator

## Getting started

**Prerequisites**
* [A Civo Account]()
* Terraform installed locally

Run the following command to initialise the provider:
```
terraform init
```

List the resources that will be installed and managed by terraform:
```
terraform plan
```

Create those resources
```
terraform apply
```

Additionally, you can list the state that Terraformn is amanging through:
```
terraform state list
```

To remove any state from terraform, use:
```
terraform state rm <<name of the state that you want to remove>>
```

To modify the resources in the .tf files, use the terraform console:
```
terraform console
```

and then look for the object e.g.
```
data.civo_kubernetes_cluster.cluster
```