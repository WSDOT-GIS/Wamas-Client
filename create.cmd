@SETLOCAL
@ECHO Setup Visual Studio variables...
@REM SET BASEURL=http://198.238.214.59
@SET BASEURL=http://geoservicestest.wa.gov
@SET NSBASE=WA.MasterAddress
@CALL "%ProgramFiles(x86)%\Microsoft Visual Studio 12.0\Common7\Tools\VSVARS32.bat"
@ECHO Set the path variable to include the directory with the WSDL.exe tool...
@SET PATH=%PATH%;%ProgramFiles(x86)%\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools
wsdl %BASEURL%/addresscorrection_v2/service.asmx?WSDL /protocol:HttpGet /nologo /urlkey:CorrectionUrl /baseurl:%BASEURL% /namespace:%NSBASE%.Correction /out:Correction.cs
wsdl %BASEURL%/geocoder_v2/service.asmx?WSDL /protocol:HttpGet /nologo /urlkey:GeocoderUrl /baseurl:%BASEURL% /namespace:%NSBASE%.Geocoder /out:Geocoder.cs
csc /target:library /nologo /out:Wamas.dll *.cs
@ENDLOCAL
