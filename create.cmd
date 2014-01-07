@SETLOCAL
@ECHO Setup Visual Studio variables...
@CALL "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\Common7\Tools\VSVARS32.bat"
@ECHO Set the path variable to include the directory with the WSDL.exe tool...
@SET PATH=%PATH%;%ProgramFiles(x86)%\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools
wsdl http://198.238.214.59/addresscorrection_v2/service.asmx?WSDL /nologo /namespace:WA.Master.Address.Correction /out:Correction.cs
wsdl http://198.238.214.59/geocoder_v2/service.asmx?WSDL /nologo /namespace:WA.Master.Address.Geocoder /out:Geocoder.cs
csc /target:library /nologo /out:Wamas.dll *.cs
@ENDLOCAL
