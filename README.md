# Skills Instaladas — Ambiente Completo

**Samuel Morais | UrbYON | SAMA CRM | Grupo Marlon Morais**
**Anápolis/GO**

Inventário completo de skills, plugins built-in e MCP servers organizados por categoria.

## Categorias

| # | Categoria | Skills | Origem |
|---|-----------|--------|--------|
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
| 16 | Built-in Plugins (Claude Code) | 12 | Anthropic |
| 17 | MCP Servers | 18 | Vários |

**Total: 333 skills/plugins/servers**

## Estrutura

Cada skill/plugin/server tem sua própria pasta com `SKILL.md` contendo:
- Nome
- Categoria
- Descrição
- Instruções de uso / triggers

## Instalação local

```bash
# Linux / Mac / WSL
./instalar-skills.sh

# Windows PowerShell
.\instalar-skills.ps1
```

Os scripts copiam todas as pastas com `SKILL.md` deste repo para `~/.claude/skills/`, ativando-as no Claude Code.

## Built-in plugins (16-builtin-plugins/)

`code-review`, `verify`, `run`, `init`, `review`, `security-review`, `claude-api`, `loop`, `fewer-permission-prompts`, `update-config`, `keybindings-help`, `session-start-hook`

## MCP Servers (17-mcp-servers/)

GitHub · Notion · Stripe · Shopify · Gmail · Slack · Figma · Supabase · Vercel · Netlify · Gamma · Canva · Microsoft Learn · HuggingFace · Zapier · Windsor.ai (325+ conectores) · Pinokio · Three.js
