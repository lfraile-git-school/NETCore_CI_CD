#!/bin/bash
# set ASPNETCORE_ENVIRONMENT=Codespaces

sudo dotnet dev-certs https
dotnet tool restore 

dotnet build ./src/Web/Web.csproj

dotnet ef database update -c catalogcontext -p ./src/Infrastructure/Infrastructure.csproj -s ./src/Web/Web.csproj
dotnet ef database update -c appidentitydbcontext -p ./src/Infrastructure/Infrastructure.csproj -s ./src/Web/Web.csproj