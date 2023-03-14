module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "exam3-eks-cluster"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = module.exam3-vpc.vpc_id
    subnet_ids = module.exam3-vpc.private_subnets

    tags = {
        environment = "development"
        application = "exam3"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 2
            max_size = 2
            desired_size = 2

            instance_types = ["t2.medium"]
        }
    }
}
