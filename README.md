### Argo CD Setup

Deploys ArgoCD into cluster and optionally bootstraps sealed-secrets as well. Leverages [Red Hat Canada GitOps](https://github.com/redhat-canada-gitops) repos.

Uses slightly different roles then Red Hat Canada's version.

### Sealed Secrets

Deploys sealed secrets into the cluster, note that private key sealed-secrets-secret.yaml is not stored in the repo.

```
./apply-sealed-secrets.sh
```