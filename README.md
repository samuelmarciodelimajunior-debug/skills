# Skills Instaladas — Ambiente Completo

**Samuel Morais | UrbYON | SAMA CRM | Grupo Marlon Morais**
**Anápolis/GO**

Estrutura completa de skills, plugins e conectores organizada por categoria.

## Categorias

| # | Categoria | Skills | Repositório |
|---|-----------|--------|-------------|
| 01 | Processo & Orquestração | 5 | github.com/massgen/skills |
| 02 | Design & Frontend | 10 | github.com/nextlevelbuilder/ui-ux-pro-max-skill |
| 03 | Marketing | 38 | github.com/coreyhaines31/marketingskills |
| 04 | SEO Avançado | 23 | github.com/AgriciDaniel/claude-seo |
| 05 | n8n Automação | 7 | github.com/czlonkowski/n8n-mcp |
| 06 | Obsidian | 5 | github.com/kepano/obsidian-skills |
| 07 | Memória Persistente | 7 | github.com/thedotmack/claude-mem |
| 08 | Contexto & Engenharia | 15 | github.com/muratcankoylan/Agent-Skills-for-Context-Engineering |
| 09 | GSD — Get Shit Done | 81 | github.com/gsd-build/get-shit-done |
| 10 | gstack (Garry Tan / YC) | 27 | github.com/garrytan/gstack |
| 11 | Remotion | 12 | github.com/remotion-dev/remotion |
| 12 | Caveman | 5 | github.com/JuliusBrussee/caveman |
| 13 | Ruflo (AgentDB/Swarm/V3) | 38 | — |
| 14 | RTK (Rust/TDD) | 12 | — |
| 15 | Outras | 18 | — |

## Estrutura

Cada skill possui sua própria pasta com `SKILL.md` contendo:
- Nome
- Categoria
- Descrição
- Instruções de uso

## Comandos de instalação por repositório

```bash
# Processo & Orquestração
npx skills add massgen/skills -g -y

# Design & Frontend
npm install -g uipro-cli && uipro init --ai claude

# Marketing
npx skills add coreyhaines31/marketingskills -g -y

# SEO Avançado
git clone https://github.com/AgriciDaniel/claude-seo.git

# n8n Automação
npx skills add czlonkowski/n8n-skills -g -y

# Obsidian
npx skills add kepano/obsidian-skills -g -y

# Memória Persistente
npx skills add thedotmack/claude-mem -g -y

# Contexto & Engenharia
npx skills add muratcankoylan/Agent-Skills-for-Context-Engineering -g -y

# GSD
npx get-shit-done-cc@latest --claude --global --yes

# gstack
git clone --depth 1 https://github.com/garrytan/gstack.git

# Remotion
git clone --depth 1 https://github.com/remotion-dev/remotion.git

# Caveman
npx skills add JuliusBrussee/caveman -g -y
```
