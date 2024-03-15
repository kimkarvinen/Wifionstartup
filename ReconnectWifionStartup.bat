@echo off
set SSID="WifiSSID"
set PASSWORD="WifiPass"

echo Attempting to connect to %SSID%...

netsh wlan connect name=%SSID% ssid=%SSID% > nul

if %errorlevel% neq 0 (
    echo --Failed to connect to %SSID%.
    echo --Double check the Wi-Fi SSID and password...
    echo --Make sure the Wi-Fi network is well-known and registered. Connect to Wi-Fi manually first if necessary...
    echo --check if Wi-Fi is turned on or unplugged...
    echo --karvinen
) else (
    echo Successfully connected to %SSID%.
)

pause