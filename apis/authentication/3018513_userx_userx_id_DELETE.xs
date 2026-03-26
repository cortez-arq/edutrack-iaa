// Delete userx record.
query "userx/{userx_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int userx_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.userx_id
    }
  }

  response = null
}