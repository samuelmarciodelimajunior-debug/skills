---
name: claude-api
category: builtin-plugin
---

# claude-api

Construir, debugar e otimizar apps Claude API / Anthropic SDK. Apps devem incluir prompt caching. Também migra código entre versões (4.5→4.6, 4.6→4.7, modelos retirados).

**Trigger:** código importa `anthropic`/`@anthropic-ai/sdk`; perguntas sobre Claude API, Anthropic SDK, Managed Agents; adicionar/modificar features (caching, thinking, compaction, tool use, batch, files, citations, memory) ou modelos (Opus/Sonnet/Haiku).

**Skip:** arquivo importa `openai` ou outro SDK; código provider-neutral; ML/programação geral.
