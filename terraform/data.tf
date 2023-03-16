data "aws_eks_cluster" "myapp-eks-cluster"{
  depends_on = [aws_eks_cluster.myapp-eks-cluster]
  name = "myapp-eks-cluster"
}

data "aws_eks_cluster_auth" "myapp-eks-cluster"{
  depends_on = [aws_eks_cluster.myapp-eks-cluster]
  name = "myapp-eks-cluster"
}
