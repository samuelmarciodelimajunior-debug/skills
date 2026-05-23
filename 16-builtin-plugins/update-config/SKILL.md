---
name: update-config
category: builtin-plugin
---

# update-config

Configurar o harness do Claude Code via `settings.json`.

**Quando usar:**
- Comportamentos automáticos ("a partir de agora quando X", "sempre que X", "antes/depois de X") → exigem hooks no settings.json
- Permissões ("permitir X", "adicionar permissão")
- Variáveis de ambiente ("set X=Y")
- Troubleshooting de hooks
- Mudanças em settings.json / settings.local.json

Para settings simples (theme/model), use o comando `/config`.
