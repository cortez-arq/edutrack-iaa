// Get userx record
query "userx/{userx_id}" verb=GET {
  api_group = "Authentication"

  input {
    int userx_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.userx_id
    } as $userx
  
    precondition ($userx != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $userx
}