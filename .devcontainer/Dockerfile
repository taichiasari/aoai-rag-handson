# Use the official devcontainers Python image
FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install other dependencies
COPY requirements.txt /tmp/pip-tmp/
RUN pip install -r /tmp/pip-tmp/requirements.txt && rm -rf /tmp/pip-tmp

# Install Azure Developer CLI
RUN curl -fsSL https://aka.ms/install-azd.sh | bash
