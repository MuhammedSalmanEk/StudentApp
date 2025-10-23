# Use .NET 8 runtime (lightweight image, no SDK)
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set working directory
WORKDIR /app

# Copy all published files into the container
COPY . .

# Expose Render's port
EXPOSE 10000

# Run your already published app
ENTRYPOINT ["dotnet", "StudentTest.dll"]
