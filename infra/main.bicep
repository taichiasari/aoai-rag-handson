param location string = 'eastus'
param openAiServiceName string = 'my-openai-service'
param searchServiceName string = 'rag-handson-search'
param documentIntelligenceServiceName string = 'my-document-intelligence'

resource openAiService 'Microsoft.CognitiveServices/accounts@2023-10-01-preview' = {
  name: openAiServiceName
  location: location
  kind: 'OpenAI'
  sku: {
    name: 'S0'
  }
  properties: {}
}

resource searchService 'Microsoft.Search/searchServices@2020-03-13' = {
  name: searchServiceName
  location: location
  sku: {
    name: 'basic'
  }
  properties: {
    replicaCount: 1
    partitionCount: 1
  }
}

resource documentIntelligenceService 'Microsoft.CognitiveServices/accounts@2023-10-01-preview' = {
  name: documentIntelligenceServiceName
  location: location
  kind: 'FormRecognizer'
  sku: {
    name: 'S0'
  }
  properties: {}
}

resource gptdeployment 'Microsoft.CognitiveServices/accounts/deployments@2023-05-01' = {
  parent: openAiService
  name: 'gpt-35-turbo-deploy'
  properties: {
    model:{
      format: 'OpenAI'
      name: 'gpt-35-turbo'
    }
  }
  sku: {
    name: 'Standard'
    capacity: 20
  }
}

resource embeddingdeployment 'Microsoft.CognitiveServices/accounts/deployments@2023-05-01' = {
  parent: openAiService
  name: 'text-embedding-3-small-deploy'
  properties: {
    model:{
      format: 'OpenAI'
      name: 'text-embedding-3-small'
    }
  }
  sku: {
    name: 'Standard'
    capacity: 20
  }
  dependsOn: [
    gptdeployment
  ]
}
