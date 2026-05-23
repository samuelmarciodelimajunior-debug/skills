#!/bin/bash
# ============================================================
# INSTALADOR DE SKILLS - Samuel Morais
# Ativa as 303 skills deste repo em ~/.claude/skills
# Linux/Mac/WSL
# ============================================================

set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_SKILLS="$HOME/.claude/skills"

echo "==> Repositorio:  $REPO_DIR"
echo "==> Destino:      $CLAUDE_SKILLS"
mkdir -p "$CLAUDE_SKILLS"

count=0
while IFS= read -r skill_md; do
  d="$(dirname "$skill_md")"
  name="$(basename "$d")"
  cp -rf "$d" "$CLAUDE_SKILLS/$name"
  count=$((count + 1))
done < <(find "$REPO_DIR" -mindepth 2 -maxdepth 3 -name SKILL.md -type f -not -path "*/.git/*")

echo ""
echo "============================================================"
echo "INSTALACAO COMPLETA"
echo "============================================================"
total_ativas=$(find "$CLAUDE_SKILLS" -name SKILL.md -type f | wc -l)
echo "Skills copiadas nesta execucao: $count"
echo "Total de skills ativas:         $total_ativas"
echo ""
echo "Reinicie o Claude Code para carregar as skills."
