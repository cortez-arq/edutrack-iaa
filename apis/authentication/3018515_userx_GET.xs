// Query all userx records
query userx verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $userx
  }

  response = $userx
}