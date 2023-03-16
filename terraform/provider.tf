provider "helm" {
  kubernetes {
    host = module.eks.endpoint
    token = data.eks_auth.myapp-eks-cluster.token
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.myapp-eks-cluster.certificate_authority[0].data)
    #config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  host = module.eks.endpoint
  token = data.eks_auth.myapp-eks-cluster.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.myapp-eks-cluster.certificate_authority[0].data)
    
  #config_path = pathexpand(var.kube_config)
}
