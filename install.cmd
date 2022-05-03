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
rem https://github.com/TranslucentTB/TranslucentTB/releases/download/2021.5/winui-x64.appx
echo TranslucentTB
curl --location --progress-bar https://github.com/TranslucentTB/TranslucentTB/releases/download/2021.5/bundle.msixbundle --output "%TEMP%\translucentTB.msixbundle"
powershell -c "Add-AppxPackage %TEMP%\translucentTB.msixbundle"
echo PowerToys
curl --location --progress-bar https://github.com/hello-smile6/give-me-my-apps/releases/download/dependencies/PowerToysSetup-0.15.2-x64.msix --output "%TEMP%\powertoys.msix"
powershell -c "Add-AppxPackage %TEMP%\powertoys.msix"
echo Themes
echo  Pantone Color of the Year 2022
curl --location --progress-bar https://github.com/hello-smile6/give-me-my-apps/releases/download/dependencies/MicrosoftCorporationII.PantoneColoroftheYear2022_1.0.0.0_neutral__8wekyb3d8bbwe.Appx --output "%TEMP%\pantone2022.appx"
powershell -c "Add-AppxPackage %TEMP%\pantone2022.appx"
rem +----------------------------------------+
rem |                                        |
rem |  THIS LINE MUST BE LAST, BIG DOWNLOAD  |
rem |                                        |
rem +----------------------------------------+
echo Ubuntu
curl --location --progress-bar https://github.com/hello-smile6/give-me-my-apps/releases/download/dependencies/CanonicalGroupLimited.UbuntuonWindows_2004.2022.1.0_neutral___79rhkp1fndgsc.AppxBundle --output "%TEMP%\ubuntu.AppxBundle"
powershell -c "Add-AppxPackage %TEMP%\ubuntu.AppxBundle"
