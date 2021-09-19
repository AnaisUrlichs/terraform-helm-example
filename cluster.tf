resource "civo_kubernetes_cluster" "cluster" {
  name              = var.cluster_name
  applications      = var.applications
  num_target_nodes  = var.cluster_nodes
  target_nodes_size = element(data.civo_instances_size.small.sizes, 0).name
  region            = var.region
}

data "civo_kubernetes_cluster" "cluster" {
  name = civo_kubernetes_cluster.cluster.name
  depends_on       = [civo_kubernetes_cluster.cluster]
}

data "civo_instances_size" "small" {
    filter {
        key = "type"
        values = ["kubernetes"]
    }
}