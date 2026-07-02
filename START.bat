@echo off
title Library Management System
color 0A
echo.
echo  ========================================
echo   LIBRARY MANAGEMENT SYSTEM
echo  ========================================
echo.

cd /d "%~dp0"

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js from https://nodejs.org
    pause
    exit /b 1
)

if not exist "node_modules" (
    echo [1/5] Installing root dependencies...
    call npm install
)

if not exist "server\node_modules" (
    echo [2/5] Installing server dependencies...
    cd server
    call npm install
    cd ..
)

if not exist "client\node_modules" (
    echo [3/5] Installing client dependencies...
    cd client
    call npm install
    cd ..
)

echo [4/5] Building website...
cd client
call npm run build
if %errorlevel% neq 0 (
    echo [ERROR] Frontend build failed.
    cd ..
    pause
    exit /b 1
)
cd ..

echo [5/5] Seeding database...
cd server
node seed.js
cd ..

set PORT=7890

echo.
echo  Starting Library Management System...
echo  Open: http://localhost:7890
echo.
echo  Librarian: librarian@library.com / librarian123
echo  Student:   student@demo.com / student123
echo.
echo  Press Ctrl+C to stop the server.
echo.

start "" http://localhost:7890

cd server
node index.js

pause
