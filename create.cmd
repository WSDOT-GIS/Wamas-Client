SETLOCAL
REM Set the path variable to include the directory with the WSDL.exe tool.
SET PATH=%PATH%;%ProgramFiles(x86)%\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools
wsdl http://198.238.214.59/addresscorrection_v2/service.asmx?WSDL /namespace:WA.Master.Address.Correction /out:Correction.cs
wsdl http://198.238.214.59/geocoder_v2/service.asmx?WSDL /namespace:WA.Master.Address.Geocoder /out:Geocoder.cs
ENDLOCAL
