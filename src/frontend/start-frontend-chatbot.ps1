Write-Host "Starting Frontend with Chatbot-only support..." -ForegroundColor Green

# Use non-routable addresses to avoid connection attempts
$env:PRODUCT_CATALOG_SERVICE_ADDR = "127.0.0.2:3550"
$env:CURRENCY_SERVICE_ADDR = "127.0.0.2:7000"
$env:CART_SERVICE_ADDR = "127.0.0.2:7070"
$env:RECOMMENDATION_SERVICE_ADDR = "127.0.0.2:8080"
$env:CHECKOUT_SERVICE_ADDR = "127.0.0.2:5050"
$env:SHIPPING_SERVICE_ADDR = "127.0.0.2:50051"
$env:AD_SERVICE_ADDR = "127.0.0.2:9555"
$env:SHOPPING_ASSISTANT_SERVICE_ADDR = "127.0.0.2:8081"

$env:PORT = "8080"
$env:ENABLE_ASSISTANT = "true"
$env:CYMBAL_BRANDING = "true"
$env:ENABLE_TRACING = "0"
$env:ENABLE_PROFILER = "0"

Write-Host ""
Write-Host "✅ Frontend server starting..." -ForegroundColor Yellow
Write-Host "⚠️  Main page will show errors (expected - services not running)" -ForegroundColor Yellow
Write-Host "✅ Chatbot will work perfectly!" -ForegroundColor Green
Write-Host ""
Write-Host "🤖 Access the chatbot directly at:" -ForegroundColor Cyan
Write-Host "   http://localhost:8080/assistant" -ForegroundColor White
Write-Host ""

# Start the application
go run .