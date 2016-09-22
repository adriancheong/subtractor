RUN dotnet restore
RUN dotnet build
RUN dotnet publish
FROM microsoft/dotnet:latest
COPY src/Subtractor/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Subtractor.dll
