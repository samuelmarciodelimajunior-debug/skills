---
name: github
category: mcp-server
---

# GitHub MCP

Acesso completo à GitHub API via tools `mcp__github__*`.

**Capacidades:** issues, PRs, comentários, reviews, CI status, branches, commits, tags, releases, secret scanning, code search, repository management, sub-issues, push files, copilot review request.

**Eventos PR:** `subscribe_pr_activity` para receber webhooks (comentários, CI, reviews) que despertam a sessão; `unsubscribe_pr_activity` para parar.

**Restrição:** acesso restrito ao repo configurado pelo usuário.
