resource "kubernetes_namespace_v1" "dev-app-xyz" {
  metadata {
    annotations = {
      name = "app-team-a"
    }

    labels = {
      env = "dev"
    }

    name = "dev-app-xyz"
  }
}

