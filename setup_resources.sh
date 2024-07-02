#!/bin/bash

# Azure CLIを使用してAzureにログインします
az login --use-device-code

# リソースグループを作成します
az group create --name rg-rag-handson --location eastus

# Bicepファイルを使用してリソースをデプロイします
az deployment group create --resource-group rg-rag-handson --template-file infra/main.bicep --parameters location=eastus
