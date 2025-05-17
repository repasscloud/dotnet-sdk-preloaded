# dotnet-sdk-preloaded:9.0.200-alpine

This Docker image provides a preloaded .NET 9.0.200 SDK environment with commonly used libraries and tools for building modern Blazor WebAssembly, WebAPI, Entity Framework Core, and authentication-enabled applications.

It is published as a multi-architecture image (x64 and ARM64) to Docker Hub:

```sh
repasscloud/dotnet-sdk-preloaded:9.0.200-alpine
```

## ✨ What's Included

The image is based on `alpine` and includes:

- **.NET SDK 9.0.200**
- **Entity Framework Core 9.0.x toolchain**
- **Essential packages pre-installed** via `dotnet add`:

```bash
Blazored.LocalStorage                                 4.5.0
Microsoft.AspNetCore.Identity.EntityFrameworkCore     9.0.3
Microsoft.EntityFrameworkCore.Tools                   9.0.1
MudBlazor                                             8.4.0
nanoid                                                3.1.0
Npgsql.EntityFrameworkCore.PostgreSQL                 9.0.4
QRCoder                                               1.6.0
Swashbuckle.AspNetCore                                7.2.0
System.IdentityModel.Tokens.Jwt                       8.7.0
System.Security.Claims                                4.3.0
Extensions.MudBlazor.StaticInput                      3.2.0
Microsoft.AspNetCore.Authentication.MicrosoftAccount  9.0.3
Microsoft.AspNetCore.Components.WebAssembly.Server    9.0.3
Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore  9.0.3
Microsoft.AspNetCore.Identity.UI                      9.0.3
Microsoft.EntityFrameworkCore                         9.0.3
Microsoft.EntityFrameworkCore.Design                  9.0.3
Microsoft.EntityFrameworkCore.Tools                   9.0.3
Microsoft.Extensions.Configuration                    9.0.3
Microsoft.IdentityModel.Tokens                        8.6.1
Microsoft.AspNetCore.OpenApi                          9.0.3
System.IdentityModel.Tokens.Jwt                       8.6.1
HtmlAgilityPack                                       1.12.1
```

> `dotnet restore` is already run inside the container.

## 🚀 Use Cases

- CI/CD build images with full framework support
- EF Core migration and tooling support
- Custom Blazor + API builds with MudBlazor and Identity
- Quick bootstrapping of `.NET 9` projects with Swagger, PostgreSQL, OpenAPI, etc.

## 🔗 Usage

```bash
docker pull repasscloud/dotnet-sdk-preloaded:9.0.200-alpine
```

Or in `Dockerfile`:

```dockerfile
FROM repasscloud/dotnet-sdk-preloaded:9.0.200-alpine AS build
```

## ⚙️ Maintained By

Danijel-James Wynyard (@danijeljw) for [repasscloud](https://github.com/repasscloud)

Multi-arch builds powered by [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx/).

---

Last updated: 20250518
