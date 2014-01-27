WAMAS Client library
===========================================================

This is a .NET client library for the [Washington Master Address Services (WAMAS)] SOAP web services.

## Get compiled library ##

You can get the latest released client library from https://github.com/WSDOT-GIS/Wamas-Client/releases/latest


## create.cmd ##

The `create.cmd` file is a Windows batch file that will...

1. Setup paths and environment variables so that `*.exe` files will be accessible.
1. Run [wsdl.exe] to generate the `Correction.cs` and `Geocoder.cs` files.
2. Run [csc.exe] to compile all files with the `.cs` extension into `Wamas.dll`.

Note: This batch file was designed for use on a computer running Windows 7 (64-bit) with Visual Studio 2013 installed on it. This is the only environment that the batch file has been tested with.

[csc.exe]:http://msdn.microsoft.com/en-us/library/78f4aasd.aspx
[Washington Master Address Services (WAMAS)]:http://geoservicestest.wa.gov/testwebservices/default.aspx
[wsdl.exe]:http://msdn.microsoft.com/en-us/library/vstudio/7h3ystb6%28v=vs.100%29.aspx
