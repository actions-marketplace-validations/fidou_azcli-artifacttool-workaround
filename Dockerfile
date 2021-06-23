FROM ubuntu

#trying to fix the issue of mcr.microsoft/azure-cli image being broken and failing to publish -> following the steps in https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt
RUN apt-get update
RUN apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

RUN apt-get update
RUN apt-get install -y azure-cli
RUN az extension add --name azure-devops
RUN export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
#end of the fix

# mount working directory

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
