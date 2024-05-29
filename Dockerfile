# Use the official ASP.NET 4.8 image provided by Microsoft
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 AS base
WORKDIR /inetpub/wwwroot

# Copy the contents of the ASP.NET Web Forms application into the container
COPY . .

# Expose port 80 to allow external connections
EXPOSE 80

# Specify the entry point for the container
CMD ["cmd", "/c", "C:\\ServiceMonitor.exe", "w3svc"]
