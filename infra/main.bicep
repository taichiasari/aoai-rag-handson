resource aiSearch 'Microsoft.Search/searchServices@2020-03-13' = {
  name: 'my-search-service'
  location: 'eastus'
  sku: {
    name: 'basic'
  }
  properties: {
    replicaCount: 1
    partitionCount: 1
  }
}

resource openAiService 'Microsoft.CognitiveServices/accounts@2021-04-30' = {
  name: 'my-openai-service'
  location: 'eastus'
  kind: 'OpenAI'
  sku: {
    name: 'S0'
  }
  properties: {
    apiProperties: {
      qnaResourceId: ''
    }
  }
}
