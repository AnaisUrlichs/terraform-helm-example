output "kubernetes_cluster_output" {
  value = data.civo_kubernetes_cluster.cluster.master_ip
}
output "kubernetes_cluster_applications" {
  value = data.civo_kubernetes_cluster.cluster.applications
}
output "kubernetes_cluster_kubeconfig" {
  value = data.civo_kubernetes_cluster.cluster.kubeconfig
}