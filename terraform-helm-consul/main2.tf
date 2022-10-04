provider "helm" {
  kubernetes {
    host                   = <host detail>
    cluster_ca_certificate = <cluster certificate>
    exec {
      api_version = "client.authentication.k8s.io/v1alpha1"
      args        = [<command to connect to cluster]
      command     = "oci"
    }
  }
}

resource "helm_release" "consul" {
  name       = "consul"
  repository = "<chart url>"
  chart      = "consul"

  values = [
    file("${path.module}/consul-values.yaml")
  ]

#  set {
#    name  = "server.replica"
#    value = var.replica
#  }
}
