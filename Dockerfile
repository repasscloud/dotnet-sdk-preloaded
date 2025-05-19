# Use official .NET SDK base image
FROM mcr.microsoft.com/dotnet/sdk:9.0.300 AS base

# Metadata
LABEL maintainer="hello@repasscloud.com"
LABEL version="2.0.0"
LABEL description="Custom .NET SDK image (repasscloud/dotnet-sdk-preloaded:9.0.300)"

# Set working directory
WORKDIR /

# Ensure global tools path is available in all shells
ENV PATH="$PATH:/root/.dotnet/tools"

# Install EF Core tools (global)
COPY install-ef.sh /tmp/install-ef.sh
RUN chmod +x /tmp/install-ef.sh && /tmp/install-ef.sh

# Create dummy project to pre-cache common packages
RUN dotnet new console -n TempProject \
    && cd TempProject \
    && dotnet add package Extensions.MudBlazor.StaticInput --version 3.2.0 \
    && dotnet add package HtmlAgilityPack --version 1.12.1 \
    && dotnet add package MudBlazor --version 8.6.0 \
    && dotnet add package Nanoid --version 3.1.0 \
    && dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL --version 9.0.4 \
    && dotnet add package QRCoder --version 1.6.0 \
    && dotnet add package Swashbuckle.AspNetCore --version 8.1.1 \
    && dotnet add package Swashbuckle.AspNetCore.Annotations --version 8.1.1 \
    && dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.Authentication.MicrosoftAccount --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.Components.WebAssembly.Server --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.Identity.EntityFrameworkCore --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.Identity.UI --version 9.0.5 \
    && dotnet add package Microsoft.AspNetCore.OpenApi --version 9.0.5 \
    && dotnet add package Microsoft.EntityFrameworkCore --version 9.0.5 \
    && dotnet add package Microsoft.EntityFrameworkCore.Design --version 9.0.5 \
    && dotnet add package Microsoft.EntityFrameworkCore.Tools --version 9.0.5 \
    && dotnet add package Microsoft.Extensions.Configuration --version 9.0.5 \
    && dotnet add package Microsoft.IdentityModel.Tokens --version 8.10.0 \
    && dotnet add package System.IdentityModel.Tokens.Jwt --version 8.10.0 \
    && dotnet add package System.Security.Claims --version 4.3.0 \
    && cd .. \
    && rm -rf TempProject
