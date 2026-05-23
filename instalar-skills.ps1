# ============================================================
# INSTALADOR DE SKILLS - Samuel Morais
# Cria pasta SKILLS e instala TUDO dentro dela
# Rodar no PowerShell (Windows) como administrador
# ============================================================

$ErrorActionPreference = "Continue"
$BASE = "$env:USERPROFILE\SKILLS"

Write-Host "==> Criando pasta base: $BASE" -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $BASE | Out-Null
Set-Location $BASE

# ============================================================
# 1. PROCESSO & ORQUESTRACAO
# ============================================================
Write-Host "[1/12] Processo & Orquestracao (massgen/skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\01-processo-orquestracao" | Out-Null
git clone --depth 1 https://github.com/massgen/skills.git "$BASE\01-processo-orquestracao\massgen-skills" 2>&1
npx -y skills add massgen/skills -g -y 2>&1

# ============================================================
# 2. DESIGN & FRONTEND
# ============================================================
Write-Host "[2/12] Design & Frontend (ui-ux-pro-max)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\02-design-frontend" | Out-Null
git clone --depth 1 https://github.com/nextlevelbuilder/ui-ux-pro-max-skill.git "$BASE\02-design-frontend\ui-ux-pro-max-skill" 2>&1
npm install -g uipro-cli 2>&1
uipro init --ai claude 2>&1

# ============================================================
# 3. MARKETING (38 skills)
# ============================================================
Write-Host "[3/12] Marketing (38 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\03-marketing" | Out-Null
git clone --depth 1 https://github.com/coreyhaines31/marketingskills.git "$BASE\03-marketing\marketingskills" 2>&1
npx -y skills add coreyhaines31/marketingskills -g -y 2>&1

# ============================================================
# 4. SEO AVANCADO (24 skills)
# ============================================================
Write-Host "[4/12] SEO Avancado (24 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\04-seo-avancado" | Out-Null
git clone --depth 1 https://github.com/AgriciDaniel/claude-seo.git "$BASE\04-seo-avancado\claude-seo" 2>&1

# ============================================================
# 5. N8N AUTOMACAO (7 skills)
# ============================================================
Write-Host "[5/12] n8n Automacao (7 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\05-n8n-automacao" | Out-Null
git clone --depth 1 https://github.com/czlonkowski/n8n-mcp.git "$BASE\05-n8n-automacao\n8n-mcp" 2>&1
npx -y skills add czlonkowski/n8n-skills -g -y 2>&1

# ============================================================
# 6. OBSIDIAN (5 skills)
# ============================================================
Write-Host "[6/12] Obsidian (5 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\06-obsidian" | Out-Null
git clone --depth 1 https://github.com/kepano/obsidian-skills.git "$BASE\06-obsidian\obsidian-skills" 2>&1
npx -y skills add kepano/obsidian-skills -g -y 2>&1

# ============================================================
# 7. MEMORIA PERSISTENTE (7 skills)
# ============================================================
Write-Host "[7/12] Memoria Persistente (claude-mem)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\07-memoria-persistente" | Out-Null
git clone --depth 1 https://github.com/thedotmack/claude-mem.git "$BASE\07-memoria-persistente\claude-mem" 2>&1
npx -y skills add thedotmack/claude-mem -g -y 2>&1
npx -y claude-mem start 2>&1

# ============================================================
# 8. CONTEXTO & ENGENHARIA (15 skills)
# ============================================================
Write-Host "[8/12] Contexto & Engenharia (15 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\08-contexto-engenharia" | Out-Null
git clone --depth 1 https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering.git "$BASE\08-contexto-engenharia\Agent-Skills-for-Context-Engineering" 2>&1
npx -y skills add muratcankoylan/Agent-Skills-for-Context-Engineering -g -y 2>&1

# ============================================================
# 9. GSD - GET SHIT DONE (81 skills)
# ============================================================
Write-Host "[9/12] GSD - Get Shit Done (81 skills)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\09-gsd-get-shit-done" | Out-Null
git clone --depth 1 https://github.com/gsd-build/get-shit-done.git "$BASE\09-gsd-get-shit-done\get-shit-done" 2>&1
npx -y get-shit-done-cc@latest --claude --global --yes 2>&1

# ============================================================
# 10. GSTACK (35+ skills)
# ============================================================
Write-Host "[10/12] gstack (Garry Tan / YC)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\10-gstack" | Out-Null
git clone --depth 1 https://github.com/garrytan/gstack.git "$BASE\10-gstack\gstack" 2>&1

# ============================================================
# 11. REMOTION (Video)
# ============================================================
Write-Host "[11/12] Remotion (Video com React)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\11-remotion" | Out-Null
git clone --depth 1 https://github.com/remotion-dev/remotion.git "$BASE\11-remotion\remotion" 2>&1

# ============================================================
# 12. CAVEMAN (5 skills)
# ============================================================
Write-Host "[12/12] Caveman (Comunicacao Ultra-Compacta)" -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$BASE\12-caveman" | Out-Null
git clone --depth 1 https://github.com/JuliusBrussee/caveman.git "$BASE\12-caveman\caveman" 2>&1
npx -y skills add JuliusBrussee/caveman -g -y 2>&1

# ============================================================
# COPIA PARA .claude\skills (ATIVACAO GLOBAL NO CLAUDE CODE)
# ============================================================
$CLAUDE_SKILLS = "$env:USERPROFILE\.claude\skills"
Write-Host ""
Write-Host "==> Copiando skills para $CLAUDE_SKILLS (ativacao global)" -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $CLAUDE_SKILLS | Out-Null

Get-ChildItem -Path $BASE -Directory | ForEach-Object {
    $catDir = $_.FullName
    Get-ChildItem -Path $catDir -Directory | ForEach-Object {
        $repoDir = $_.FullName
        # Procura subpastas com SKILL.md ou .md de skill
        Get-ChildItem -Path $repoDir -Directory -Recurse -ErrorAction SilentlyContinue | Where-Object {
            Test-Path "$($_.FullName)\SKILL.md"
        } | ForEach-Object {
            $skillName = $_.Name
            $dst = Join-Path $CLAUDE_SKILLS $skillName
            Copy-Item -Path $_.FullName -Destination $dst -Recurse -Force -ErrorAction SilentlyContinue
        }
    }
}

# ============================================================
# RESUMO
# ============================================================
Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "INSTALACAO COMPLETA" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green
Write-Host "Pasta base:     $BASE"
Write-Host "Skills ativas:  $CLAUDE_SKILLS"
Write-Host ""
Write-Host "Categorias instaladas:"
Get-ChildItem -Path $BASE -Directory | ForEach-Object {
    $count = (Get-ChildItem -Path $_.FullName -Directory -Recurse -ErrorAction SilentlyContinue | Where-Object { Test-Path "$($_.FullName)\SKILL.md" }).Count
    Write-Host ("  {0,-40} {1} skills" -f $_.Name, $count)
}
Write-Host ""
Write-Host "PROXIMO PASSO: reinicie o Claude Code para carregar as skills." -ForegroundColor Yellow
