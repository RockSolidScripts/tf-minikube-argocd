resource "helm_release" "argo-cd" {
  name             = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "6.7.15"
  namespace        = "argo-cd"
  create_namespace = true

  values = [ file("./values/argocd-defauts.yaml") ]
}
