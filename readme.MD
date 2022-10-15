# GKE with terraform

## Specification
This repo contains all artifacts necessary to achieve
  - GKE cluster deployment
  - MV with a mongoDB database deployment
  - Nodejs application with "person" CRUD running, deployed on GKE pod

To achieve this it was necessary to implemente infrastructure as code with terraform to describe all services needed to have an application running on the cloud.
Also was necessary to create a deployment on Kubernetes to expose the application and a service that will allow to connect the pods to external services as MongoDB

## Dependencies
  You have to have installed the next
  - Terraform, this will use to deploy infrastructure as code [here](https://learn.hashicorp.com/tutorials/terraform/install-cli)
  - GCP CLI, this will be necessary if you need to check your infrastructure [here](https://cloud.google.com/sdk/docs/install?hl=es-419)
  - Kubectl - this will allow us to manipulate the GKE cluster [here](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

## Configuration
### Deploy the necessary infrastructure
To deploy the GKE cluster and the VM whit database run the following commands
```bash
terraform init
terraform validate
terraform apply
```
Please save the output of the VM public IP and private IP

## Configure the mongodb-service
Now you have to replace the private IP from the output and to the k8s/mongodb-connection-service.yaml in the Endpoin->subsets->addresses->ip
