FROM microsoft/dotnet:latest
COPY src/Subtractor /root/Subtractor
RUN cd /root/Subtractor && dotnet restore && dotnet build && dotnet publish
COPY src/Subtractor/bin/Debug/netcoreapp1.0/publish/ /root/
EXPOSE 5000/tcp
ENTRYPOINT dotnet /root/Subtractor.dll
