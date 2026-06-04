markdown# NexusApp

Aplicación web con backend + PostgreSQL + Redis.
Proyecto integrador del programa de formación DevOps/Cloud Architect (88 días).

## Arquitectura Objetivo
┌─────────────────────────────────────────────────────────────────┐
│                    PRODUCCIÓN (Azure AKS)                       │
│                                                                 │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐                   │
│  │ Ingress  │───▶│  Backend │───▶│PostgreSQL│                   │
│  │ (Nginx)  │    │  (App)   │    │          │                   │
│  └──────────┘    └────┬─────┘    └──────────┘                   │
│                       │                                         │
│                  ┌────▼─────┐    ┌──────────┐                   │
│                  │  Redis   │    │ Key Vault │                  │
│                  │ (Cache)  │    │ (Secretos)│                  │
│                  └──────────┘    └──────────┘                   │
│                                                                 │
│  Observabilidad: Prometheus + Grafana + ELK Stack               │
│  CI/CD: GitHub Actions + ArgoCD (GitOps)                        │
│  IaC: Terraform (Azure + AWS)                                   │
└─────────────────────────────────────────────────────────────────┘

## Stack Tecnológico

| Capa | Tecnología |
|---|---|
| Contenedores | Docker + Kubernetes (AKS) |
| CI/CD | GitHub Actions + Azure DevOps |
| GitOps | ArgoCD |
| IaC | Terraform |
| Cloud Principal | Azure |
| Cloud Secundario | AWS |
| Observabilidad | Prometheus + Grafana + ELK |
| Secretos | Azure Key Vault + HashiCorp Vault |
| Seguridad | Trivy + Snyk + SonarQube |

## Repositorios

- `nexusapp` — código, Dockerfile, Helm chart, pipeline CI
- `nexusapp-infra` — Terraform para Azure y AWS
- `nexusapp-gitops` — ArgoCD, Kyverno, External Secrets

## Progreso

- [x] Día 1: Entorno configurado
- [ ] Días 4-18: Fundamentos Linux/Bash/Networking
- [ ] Días 19-34: Docker y Kubernetes
- [ ] Días 35-46: CI/CD y GitOps
- [ ] Días 47-61: Cloud e IaC
- [ ] Días 62-70: Observabilidad
- [ ] Días 71-78: DevSecOps
- [ ] Días 79-88: Especialización y proyecto final
