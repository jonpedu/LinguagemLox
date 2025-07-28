@echo off
echo =================================
echo     SUITE DE TESTES - LOX
echo =================================

cd "c:\Users\UFMA\Documents\JOAO PEDRO\7 PERIODO\COMPILADORES\LinguagemLox"

echo.
echo [1/8] Compilando arquivos Java...
javac *.java
if %errorlevel% neq 0 (
    echo ERRO: Falha na compilacao!
    pause
    exit /b 1
)
echo ✓ Compilacao bem-sucedida

echo.
echo [2/8] Executando teste basico...
java Lox output\test_basic.lox
echo ✓ Teste basico concluido

echo.
echo [3/8] Executando teste de variaveis...
java Lox output\test_variables.lox
echo ✓ Teste de variaveis concluido

echo.
echo [4/8] Executando teste de escopos...
java Lox output\test_scopes.lox
echo ✓ Teste de escopos concluido

echo.
echo [5/8] Executando teste de condicionais...
java Lox output\test_conditionals.lox
echo ✓ Teste de condicionais concluido

echo.
echo [6/8] Executando teste de loops...
java Lox output\test_loops.lox
echo ✓ Teste de loops concluido

echo.
echo [7/8] Executando teste de funcoes...
java Lox output\test_functions.lox
echo ✓ Teste de funcoes concluido

echo.
echo [8/8] Executando teste de classes...
java Lox output\test_classes.lox
echo ✓ Teste de classes concluido

echo.
echo =================================
echo     TODOS OS TESTES PASSARAM!
echo =================================
echo.
echo Pressione qualquer tecla para executar o teste abrangente...
pause > nul

echo.
echo Executando teste abrangente...
java Lox output\test_comprehensive.lox

echo.
echo Executando teste avancado...
java Lox output\test_advanced.lox

echo.
echo Executando teste de performance...
java Lox output\test_performance.lox

echo.
echo =================================
echo     SUITE COMPLETA CONCLUIDA!
echo =================================
pause
