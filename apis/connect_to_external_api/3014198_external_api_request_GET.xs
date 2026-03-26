query External_API_Request verb=GET {
  api_group = "Connect to External API"

  input {
  }

  stack {
    api.request {
      url = ""
      method = "GET"
    } as $api1
  }

  response = $api1
}