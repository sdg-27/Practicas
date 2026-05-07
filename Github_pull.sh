#!/usr/bin/env bash

GITHUB_USER="sdg-27"
# RECOMENDACIÓN: No pegues el token directamente aquí, usa variables de entorno si es posible.
GITHUB_TOKEN="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" 
REPO_NAME="Practicas"
BRANCH="master"

# ────────────────────────────────────────────────────────────
set -euo pipefail

log()  { echo "[INFO]  $*"; }
ok()   { echo "[OK]    $*"; }
warn() { echo "[WARN]  $*"; }
err()  { echo "[ERROR] $*" >&2; exit 1; }

# Validaciones de configuración
[[ "$GITHUB_USER"  == "TU_USUARIO"     ]] && err "Edita GITHUB_USER en el script."
[[ "$GITHUB_TOKEN" == "TU_TOKEN"       ]] && err "Edita GITHUB_TOKEN en el script."
[[ "$REPO_NAME"    == "TU_REPOSITORIO" ]] && err "Edita REPO_NAME en el script."

command -v git >/dev/null 2>&1 || err "git no está instalado."

REPO_DIR="/home/alumno/Escritorio/Practicas"
cd "$REPO_DIR" || err "No se encontró el directorio $REPO_DIR"

# Verificar si el repositorio existe localmente
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  err "El directorio no es un repositorio git. Ejecuta primero el script de push para inicializarlo."
fi

# Actualizar la URL del remoto (por si cambió el token o usuario)
REMOTE_URL="https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"
git remote set-url origin "$REMOTE_URL"

log "Buscando cambios en GitHub (origin/${BRANCH})..."

# Intentar hacer el pull
if git pull --no-rebase origin "$BRANCH"; then
  ok "¡Repositorio actualizado localmente con éxito!"
else
  err "Hubo un conflicto o un error al intentar descargar los cambios. Revisa manualmente."
fi
