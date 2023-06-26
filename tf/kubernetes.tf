


# provider "kubernetes" {

#     host = data.aws_eks_cluster.cluster.endpoint
#     token = data.aws_eks_cluster_auth.cluster.token
#     cluster_ca_certificate = base64encode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
# }


terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.21.1"
    }
  }
}

provider "kubernetes" {
  # Configuration options
  host = data.aws_eks_cluster.cluster.endpoint
  token = data.aws_eks_cluster_auth.cluster.token
  cluster_ca_certificate = base64encode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}