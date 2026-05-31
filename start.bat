@echo off
echo ============================================
echo   🚀 INICIANDO SISTEMA DE RESERVAS
echo ============================================
echo.

echo 📦 Instalando dependencias del proyecto principal...
call npm install

echo.
echo 📦 Instalando dependencias del backend...
cd api-app
call npm install
cd ..

echo.
echo 🎯 Iniciando servidores...
echo Frontend: http://localhost:5174
echo Backend:  http://localhost:5000
echo.

npm run dev:full