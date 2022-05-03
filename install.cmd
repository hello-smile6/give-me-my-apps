@echo OFF
echo Installing...
echo vclibs...
curl --location --progress-bar https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx --output "%TEMP%\vclibs.appx"
powershell -c "Add-AppxPackage %TEMP%\vclibs.appx"
echo Windows Terminal...
rem Terminal https://github.com/microsoft/terminal/releases/download/v1.12.10982.0/Microsoft.WindowsTerminal_Win10_1.12.10982.0_8wekyb3d8bbwe.msixbundle
curl --location --progress-bar https://github.com/microsoft/terminal/releases/download/v1.12.10982.0/Microsoft.WindowsTerminal_Win10_1.12.10982.0_8wekyb3d8bbwe.msixbundle --output "%TEMP%\terminal.msixbundle"
powershell -c "Add-AppxPackage %TEMP%\terminal.msixbundle"
echo Microsoft.UI.Xaml.appx (Email dependency)
curl --location --progress-bar https://github.com/hello-smile6/give-me-win32-email/releases/download/dependencies/Microsoft.UI.Xaml.2.7_7.2203.17001.0_x64__8wekyb3d8bbwe.appx --output "%TEMP%\UI.Xaml.appx"
powershell -c "Add-AppxPackage %TEMP%\UI.Xaml.appx"
echo Email
curl --location --progress-bar https://github.com/hello-smile6/give-me-win32-email/releases/download/dependencies/microsoft.windowscommunicationsapps_16005.14326.20858.0_neutral_._8wekyb3d8bbwe.appxbundle --output "%TEMP%\microsoft.windowscommunicationsapps_16005.14326.20858.0_neutral_~_8wekyb3d8bbwe.appxbundle"
powershell -c "Add-AppxPackage %TEMP%\microsoft.windowscommunicationsapps_16005.14326.20858.0_neutral_~_8wekyb3d8bbwe.appxbundle"
