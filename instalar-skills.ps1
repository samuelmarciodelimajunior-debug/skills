# ============================================================
# INSTALADOR DE SKILLS - Samuel Morais
# Ativa as 303 skills deste repo em ~/.claude/skills
# Windows PowerShell
# ============================================================

$ErrorActionPreference = "Stop"

$REPO_DIR      = Split-Path -Parent $MyInvocation.MyCommand.Path
$CLAUDE_SKILLS = Join-Path $env:USERPROFILE ".claude\skills"

Write-Host "==> Repositorio:  $REPO_DIR"      -ForegroundColor Cyan
Write-Host "==> Destino:      $CLAUDE_SKILLS" -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $CLAUDE_SKILLS | Out-Null

$count = 0
Get-ChildItem -Path $REPO_DIR -Recurse -Filter "SKILL.md" -File `
    | Where-Object { $_.FullName -notmatch "\\\.git\\" } `
    | ForEach-Object {
        $srcDir = $_.Directory.FullName
        $name   = $_.Directory.Name
        $dest   = Join-Path $CLAUDE_SKILLS $name
        if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
        Copy-Item -Recurse -Force -Path $srcDir -Destination $dest
        $count++
    }

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "INSTALACAO COMPLETA"                                          -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green
$total = (Get-ChildItem -Path $CLAUDE_SKILLS -Recurse -Filter "SKILL.md" -File).Count
Write-Host "Skills copiadas nesta execucao: $count"
Write-Host "Total de skills ativas:         $total"
Write-Host ""
Write-Host "Reinicie o Claude Code para carregar as skills." -ForegroundColor Yellow
