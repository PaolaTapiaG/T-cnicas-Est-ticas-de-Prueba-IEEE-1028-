Write-Host "=== AUDITORIA ESTATICA INICIADA ==="

$errores = 0

# 1. Compilación
Write-Host "Verificando build..."
dotnet build DemoAuditApp

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: El proyecto no compila"
    $errores++
}

# 2. Validación de int.Parse
Write-Host "Buscando int.Parse..."
$parse = Get-ChildItem -Recurse -Filter *.cs | Select-String "int.Parse"

if ($parse) {
    Write-Host "ERROR: Uso de int.Parse detectado"
    $errores++
}

# 3. Validación TryParse
Write-Host "Verificando TryParse..."
$tryparse = Get-ChildItem -Recurse -Filter *.cs | Select-String "TryParse"

if (-not $tryparse) {
    Write-Host "ERROR: No se usa TryParse"
    $errores++
}

# 4. Manejo de excepciones
Write-Host "Buscando try/catch..."
$catch = Get-ChildItem -Recurse -Filter *.cs | Select-String "catch"

if (-not $catch) {
    Write-Host "ERROR: No hay manejo de excepciones"
    $errores++
}

# 5. Documentación
Write-Host "Buscando documentación..."
$doc = Get-ChildItem -Recurse -Filter *.cs | Select-String "///"

if (-not $doc) {
    Write-Host "WARNING: No hay documentación XML"
}

# RESULTADO FINAL
Write-Host "========================="

if ($errores -gt 0) {
    Write-Host "RESULTADO: FALLA LA AUDITORIA"
    exit 1
} else {
    Write-Host "RESULTADO: AUDITORIA APROBADA"
    exit 0
}