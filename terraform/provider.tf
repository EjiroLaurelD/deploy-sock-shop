provider "helm" {
  kubernetes {
    host = module.eks.endpoint
    token = module.eks.myapp-eks-cluster.token
    cluster_ca_certificate = base64decode(module.eks.myapp-eks-cluster.certificate_authority[0].data)
    #config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  host = module.eks.endpoint
  token = module.eks.myapp-eks-cluster.token
  cluster_ca_certificate = base64decode(module.eks.myapp-eks-cluster.certificate_authority[0].data)
    
  #config_path = pathexpand(var.kube_config)
}
