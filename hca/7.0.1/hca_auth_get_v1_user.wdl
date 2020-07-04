version 1.0

task HcaAuthGetV1User {
  input {
    String? user_id
  }
  command <<<
    hca auth get-v1-user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email)."
  }
}