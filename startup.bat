@echo off
REM Dashboard Startup Script

echo Starting Dashboard system...
echo.

REM Start Python dashboard backend (main.py)
echo Starting Python dashboard backend...
start "Dashboard Backend" cmd /c "cd /d "C:\OneDrive\OneDrive - Tribotech\Tribotech\Engineering\Cast Nylon\Dashboard2.0\weartech-dashboard" && python main.py"
timeout /t 3 /nobreak

REM Start Delta eServer with the specified configuration file
echo Starting Delta eServer...
start "Delta eServer" "C:\Program Files (x86)\Delta Industrial Automation\DOP eServer 1.00.23\eServer.exe" "C:\OneDrive\OneDrive - Tribotech\Tribotech\Production\Cast Nylon\Production Log\eServer_OBDC - Lower Packets.edx"
timeout /t 2 /nobreak

REM Open Chrome for Screen 1 on LEFT monitor (full screen, kiosk mode)
echo Opening Chrome - Screen 1 (Left Monitor)...
start "Chrome Screen 1" "C:\Program Files\Google\Chrome\Application\chrome.exe" --kiosk --window-position=0,0 "http://192.168.1.28:8050/screen1"
timeout /t 1 /nobreak

REM Open Chrome for Screen 2 on RIGHT monitor (full screen, kiosk mode)
REM Position 1920,0 assumes left monitor is 1920px wide - adjust if needed
echo Opening Chrome - Screen 2 (Right Monitor)...
start "Chrome Screen 2" "C:\Program Files\Google\Chrome\Application\chrome.exe" --kiosk --window-position=1920,0 "http://192.168.1.28:8050/screen2"
timeout /t 1 /nobreak

echo.
echo All programs started successfully!
echo.
timeout /t 3 /nobreak
exit /b 0
