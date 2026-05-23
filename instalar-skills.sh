#!/bin/bash
# ============================================================
# INSTALADOR DE SKILLS - Samuel Morais
# Cria pasta SKILLS e instala TUDO dentro dela
# Versao bash (Linux/Mac/WSL)
# ============================================================

set +e
BASE="$HOME/SKILLS"
CLAUDE_SKILLS="$HOME/.claude/skills"

echo "==> Criando pasta base: $BASE"
mkdir -p "$BASE" "$CLAUDE_SKILLS"
cd "$BASE"

clone_repo() {
  local url="$1"; local dst="$2"
  mkdir -p "$(dirname "$dst")"
  git clone --depth 1 "$url" "$dst" 2>&1 || echo "  ja existe: $dst"
}

echo "[1/12] Processo & Orquestracao"
clone_repo https://github.com/massgen/skills.git "$BASE/01-processo-orquestracao/massgen-skills"
npx -y skills add massgen/skills -g -y 2>&1

echo "[2/12] Design & Frontend"
clone_repo https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git "$BASE/02-design-frontend/ui-ux-pro-max-skill"
npm install -g uipro-cli 2>&1
uipro init --ai claude 2>&1

echo "[3/12] Marketing"
clone_repo https://github.com/coreyhaines31/marketingskills.git "$BASE/03-marketing/marketingskills"
npx -y skills add coreyhaines31/marketingskills -g -y 2>&1

echo "[4/12] SEO Avancado"
clone_repo https://github.com/AgriciDaniel/claude-seo.git "$BASE/04-seo-avancado/claude-seo"

echo "[5/12] n8n Automacao"
clone_repo https://github.com/czlonkowski/n8n-mcp.git "$BASE/05-n8n-automacao/n8n-mcp"
npx -y skills add czlonkowski/n8n-skills -g -y 2>&1

echo "[6/12] Obsidian"
clone_repo https://github.com/kepano/obsidian-skills.git "$BASE/06-obsidian/obsidian-skills"
npx -y skills add kepano/obsidian-skills -g -y 2>&1

echo "[7/12] Memoria Persistente"
clone_repo https://github.com/thedotmack/claude-mem.git "$BASE/07-memoria-persistente/claude-mem"
npx -y skills add thedotmack/claude-mem -g -y 2>&1

echo "[8/12] Contexto & Engenharia"
clone_repo https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering.git "$BASE/08-contexto-engenharia/Agent-Skills-for-Context-Engineering"
npx -y skills add muratcankoylan/Agent-Skills-for-Context-Engineering -g -y 2>&1

echo "[9/12] GSD - Get Shit Done"
clone_repo https://github.com/gsd-build/get-shit-done.git "$BASE/09-gsd-get-shit-done/get-shit-done"
npx -y get-shit-done-cc@latest --claude --global --yes 2>&1

echo "[10/12] gstack"
clone_repo https://github.com/garrytan/gstack.git "$BASE/10-gstack/gstack"

echo "[11/12] Remotion"
clone_repo https://github.com/remotion-dev/remotion.git "$BASE/11-remotion/remotion"

echo "[12/12] Caveman"
clone_repo https://github.com/JuliusBrussee/caveman.git "$BASE/12-caveman/caveman"
npx -y skills add JuliusBrussee/caveman -g -y 2>&1

echo ""
echo "==> Copiando para $CLAUDE_SKILLS (ativacao global)"
find "$BASE" -type d -name "*" 2>/dev/null | while read d; do
  if [ -f "$d/SKILL.md" ]; then
    name=$(basename "$d")
    cp -rf "$d" "$CLAUDE_SKILLS/$name" 2>/dev/null
  fi
done

echo ""
echo "============================================================"
echo "INSTALACAO COMPLETA"
echo "============================================================"
echo "Pasta base:    $BASE"
echo "Skills ativas: $CLAUDE_SKILLS"
echo ""
echo "Reinicie o Claude Code para carregar as skills."
