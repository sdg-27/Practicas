#!/usr/bin/env bash

cd /home/sergio/Escritorio/Practicas
# ============================================================
#  github_push.sh — Actualiza tu repositorio de GitHub
#  sin introducir usuario ni token manualmente.
# ============================================================

# ────────────────────────────────────────────────────────────
#  CONFIGURA ESTOS VALORES ANTES DE USAR EL SCRIPT
# ────────────────────────────────────────────────────────────
GITHUB_USER="sdg-27"        # Tu nombre de usuario en GitHub
GITHUB_TOKEN="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"         # Tu Personal Access Token (classic)
REPO_NAME="Practicas"      # Nombre exacto del repositorio
BRANCH="master"                   # Rama de destino (main / master / etc.)
# ────────────────────────────────────────────────────────────

set -euo pipefail

# ── Colores ──────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # Sin color

log()  { echo -e "${CYAN}[INFO]${NC}  $*"; }
ok()   { echo -e "${GREEN}[OK]${NC}    $*"; }
warn() { echo -e "${YELLOW}[WARN]${NC}  $*"; }
err()  { echo -e "${RED}[ERROR]${NC} $*" >&2; exit 1; }

# ── Validaciones básicas ──────────────────────────────────────
[[ "$GITHUB_USER"  == "TU_USUARIO"      ]] && err "Edita GITHUB_USER en el script."
[[ "$GITHUB_TOKEN" == "TU_TOKEN"        ]] && err "Edita GITHUB_TOKEN en el script."
[[ "$REPO_NAME"    == "TU_REPOSITORIO"  ]] && err "Edita REPO_NAME en el script."

command -v git >/dev/null 2>&1 || err "git no está instalado."

# ── Comprueba que estamos en un repositorio git ───────────────
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  log "No hay repositorio git aquí. Inicializando..."
  git init
  git remote add origin "https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"
  ok "Repositorio inicializado."
fi

# ── Configura el remote con credenciales embebidas ───────────
REMOTE_URL="https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/${GITHUB_USER}/${REPO_NAME}.git"

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

# ── Comprueba si hay cambios que subir ────────────────────────
if git diff --quiet && git diff --cached --quiet && \
   [[ -z "$(git ls-files --others --exclude-standard)" ]]; then
  warn "No hay cambios nuevos. Nada que subir."
  exit 0
fi

# ── Flujo principal ───────────────────────────────────────────
echo -e "${CYAN}¿Qué has cambiado?${NC} Escribe el mensaje de commit:"
read -r -p "  > " COMMIT_MSG
[[ -z "$COMMIT_MSG" ]] && err "El mensaje no puede estar vacío."

log "Añadiendo todos los archivos..."
git add -A

log "Creando commit: \"${COMMIT_MSG}\""
git commit -m "$COMMIT_MSG"

log "Subiendo a origin/${BRANCH}..."
git push -u origin "$BRANCH"

ok "¡Repositorio actualizado correctamente en GitHub!"
echo -e "   ${CYAN}https://github.com/${GITHUB_USER}/${REPO_NAME}${NC}"
