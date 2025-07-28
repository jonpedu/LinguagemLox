# Script PowerShell para executar todos os testes da linguagem Lox
Write-Host "=================================" -ForegroundColor Cyan
Write-Host "     SUITE DE TESTES - LOX" -ForegroundColor Cyan  
Write-Host "=================================" -ForegroundColor Cyan

Set-Location "c:\Users\UFMA\Documents\JOAO PEDRO\7 PERIODO\COMPILADORES\LinguagemLox"

Write-Host ""
Write-Host "[1/8] Compilando arquivos Java..." -ForegroundColor Yellow
javac *.java
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERRO: Falha na compilacao!" -ForegroundColor Red
    Read-Host "Pressione Enter para sair"
    exit 1
}
Write-Host "Compilacao bem-sucedida" -ForegroundColor Green

$tests = @("test_basic.lox", "test_variables.lox", "test_scopes.lox", "test_conditionals.lox", "test_loops.lox", "test_functions.lox", "test_classes.lox")

for ($i = 0; $i -lt $tests.Length; $i++) {
    $testNum = $i + 2
    $testFile = $tests[$i]
    Write-Host ""
    Write-Host "[$testNum/8] Executando $testFile..." -ForegroundColor Yellow
    java Lox "output\$testFile"
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Teste $testFile concluido" -ForegroundColor Green
    } else {
        Write-Host "Teste $testFile falhou" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=================================" -ForegroundColor Cyan
Write-Host "     TESTES BASICOS CONCLUIDOS!" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan

Write-Host ""
Write-Host "Executando teste abrangente..." -ForegroundColor Yellow
java Lox "output\test_comprehensive.lox"

Write-Host ""
Write-Host "Executando teste avancado..." -ForegroundColor Yellow  
java Lox "output\test_advanced.lox"

Write-Host ""
Write-Host "Executando teste de performance..." -ForegroundColor Yellow
java Lox "output\test_performance.lox"

Write-Host ""
Write-Host "=================================" -ForegroundColor Cyan
Write-Host "     SUITE COMPLETA CONCLUIDA!" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan
