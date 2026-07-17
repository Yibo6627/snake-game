# ============================================
# 治愈贪吃蛇 · GitHub Pages 一键部署脚本
# ============================================

$REPO_NAME = "snake-game"
$GITHUB_USER = "Yibo6627"
$GITHUB_TOKEN = "YOUR_GITHUB_TOKEN"  # 替换为你的 GitHub Personal Access Token

Write-Host "============================================" -ForegroundColor Green
Write-Host "  治愈贪吃蛇 · GitHub Pages 部署" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""

$SCRIPT_DIR = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $SCRIPT_DIR

try { git --version | Out-Null } catch { Write-Host "请安装 Git" -ForegroundColor Red; exit 1 }
if (-not (Test-Path "index.html")) { Write-Host "未找到 index.html" -ForegroundColor Red; exit 1 }

if (-not (Test-Path ".git")) { git init; git branch -M main }
$remoteUrl = "https://$GITHUB_USER`:$GITHUB_TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git"
git remote remove origin 2>$null
git remote add origin $remoteUrl
git add .
git commit -m "部署治愈贪吃蛇 v1.0" 2>$null
git push -u origin main --force 2>&1

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n部署成功！访问地址: https://$GITHUB_USER.github.io/$REPO_NAME/" -ForegroundColor Green
} else {
    Write-Host "`n推送失败，请检查 Token 是否正确或网络连接" -ForegroundColor Red
}