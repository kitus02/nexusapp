.PHONY: help setup cluster-create cluster-delete

help:
	@echo "NexusApp — Comandos disponibles:"
	@echo ""
	@echo "  setup          Verificar que todas las herramientas están instaladas"
	@echo "  cluster-create Crear cluster K3d local"
	@echo "  cluster-delete Eliminar cluster K3d local"

setup:
	@echo "Verificando entorno..."
	@for cmd in git docker kubectl helm terraform az aws k3d jq yq; do \
		echo -n "  $$cmd: "; \
		$$cmd version 2>/dev/null | head -1 || $$cmd --version 2>/dev/null | head -1 || echo "NO INSTALADO"; \
	done

cluster-create:
	k3d cluster create nexusapp-local \
		--agents 2 \
		--port "8080:80@loadbalancer" \
		--port "8443:443@loadbalancer"
	kubectl get nodes

cluster-delete:
	k3d cluster delete nexusapp-local
