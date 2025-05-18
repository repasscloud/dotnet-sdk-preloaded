# dotnet-sdk-preloaded

This Docker image provides a preloaded .NET 9.0.300 SDK environment with commonly used libraries and tools for building modern Blazor WebAssembly, WebAPI, Entity Framework Core, and authentication-enabled applications.

It is published as a multi-architecture image (x86_64, ARM64, ARMv7) to Docker Hub:

```sh
repasscloud/dotnet-sdk-preloaded:9.0.300
```

## ✨ What's Included

The image is based on `mcr.microsoft.com/dotnet/sdk:9.0.300` and includes:

- **.NET SDK 9.0.300**
- **EF Core CLI tools (`dotnet-ef`) globally installed at version 9.0.5**  
  *(Note: not available on `arm/v7` due to upstream architecture limitations)*
- **Essential packages pre-installed** via `dotnet add package`:

```bash
Extensions.MudBlazor.StaticInput                      3.2.0
HtmlAgilityPack                                       1.12.1
MudBlazor                                             8.6.0
Nanoid                                                3.1.0
Npgsql.EntityFrameworkCore.PostgreSQL                 9.0.4
QRCoder                                               1.6.0
Swashbuckle.AspNetCore                                8.1.1
Swashbuckle.AspNetCore.Annotations                    8.1.1
Microsoft.AspNetCore.Authentication.MicrosoftAccount  9.0.5
Microsoft.AspNetCore.Components.WebAssembly.Server    9.0.5
Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore  9.0.5
Microsoft.AspNetCore.Identity.EntityFrameworkCore     9.0.5
Microsoft.AspNetCore.Identity.UI                      9.0.5
Microsoft.AspNetCore.OpenApi                          9.0.5
Microsoft.EntityFrameworkCore                         9.0.5
Microsoft.EntityFrameworkCore.Design                  9.0.5
Microsoft.EntityFrameworkCore.Tools                   9.0.5
Microsoft.Extensions.Configuration                    9.0.5
Microsoft.IdentityModel.Tokens                        8.10.0
System.IdentityModel.Tokens.Jwt                       8.10.0
System.Security.Claims                                4.3.0
```

> `dotnet restore` is already run inside the container.

## 🚀 Use Cases

- CI/CD build images with full framework support
- EF Core migration and tooling support
- Custom Blazor + API builds with MudBlazor and Identity
- Quick bootstrapping of `.NET 9` projects with Swagger, PostgreSQL, OpenAPI, etc.

## 🔗 Usage

```bash
docker pull repasscloud/dotnet-sdk-preloaded:9.0.300
```

Or in your `Dockerfile`:

```dockerfile
FROM repasscloud/dotnet-sdk-preloaded:9.0.300 AS build
```

## ⚙️ Maintained By

Danijel-James Wynyard (@danijeljw) for [repasscloud](https://github.com/repasscloud)

Multi-arch builds powered by [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/).

---

Last updated: 20250518
