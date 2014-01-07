*Washington Master Address Services (WAMAS)* Client library
===========================================================

This is a client library for the [Washington Master Address Services (WAMAS)] SOAP web services.

## create.cmd ##

The `create.cmd` file is a Windows batch file that will...

1. Setup paths and environment variables so that `*.exe` files will be accessible.
1. Run [wsdl.exe] to generate the `Correction.cs` and `Geocoder.cs` files.
2. Run [csc.exe] to compile all files with the `.cs` extension into `Wamas.dll`.

[csc.exe]:http://msdn.microsoft.com/en-us/library/78f4aasd.aspx
[Washington Master Address Services (WAMAS)]:http://geoservicestest.wa.gov/testwebservices/default.aspx
[wsdl.exe]:http://msdn.microsoft.com/en-us/library/vstudio/7h3ystb6%28v=vs.100%29.aspx