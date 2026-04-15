# ================================================
# Capacitor Android Update Script for OpenCasino
# Run this after you make changes to your www folder
# ================================================

Write-Host "ðŸš€ Updating OpenCasino Android app..." -ForegroundColor Cyan

# 1. Prepare web assets
Write-Host "ðŸ“¦ Preparing web assets (www folder)..." -ForegroundColor Yellow
npm run build

# 2. Sync to Android
Write-Host "ðŸ”„ Syncing to Android..." -ForegroundColor Yellow
npx cap sync android

if ($LASTEXITCODE -eq 0) {
    Write-Host "âœ… Update completed successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Cyan
    Write-Host "   npx cap open android     â† Open in Android Studio"
} else {
    Write-Host "âŒ Sync failed â€” check the error messages above" -ForegroundColor Red
}
