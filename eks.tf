module "eks" {
    source          = "terraform-aws-modules/eks/aws"
    version         = "~>20.0"

    cluster_name    = "flipkart-eks-cluster"
    cluster_version = "1.31"

    vpc_id    = module.vpc.vpc_id
    subnet_ids= module.vpc.private_subnets


    cluster_endpoint_public_access = true
    enable_cluster_creator_admin_permissions = true

    eks_managed_node_groups = {
        default = {
            instance_types = ["t3.medium"]
            min_size      = 2
            max_size      = 3
            desired_size  = 2
        }
    }

    tags = {
        Environment = "prod"
    }
}hi

Detaching internet gateway unsuccessful
igw-04396279c5717aa07 / flipkart-vpc-prod
Network vpc-05ee0a1a5f89e25f4 has some mapped public address(es). Please unmap those public address(es) before detaching the gateway.
