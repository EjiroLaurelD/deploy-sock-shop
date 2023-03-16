



provider "helm" { 
  kubernetes {
    #host = module.eks.endpoint
    #token = module.eks.myapp-eks-cluster.token
    #cluster_ca_certificate = base64decode(module.eks.certificate_authority[0].data)
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
 # host                   = data.aws_eks_cluster.cluster.endpoint
  #cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  #token                  = data.aws_eks_cluster_auth.cluster.token
  #host = module.eks.endpoint
  #token = module.eks.myapp-eks-cluster.token
  #cluster_ca_certificate = base64decode(module.eks.certificate_authority[0].data)  
  config_path = pathexpand(var.kube_config)
}
