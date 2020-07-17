version 1.0

task HcaAuthPutV1User {
  input {
    String? user_id
    String? status
  }
  command <<<
    hca auth put-v1-user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(status) then ("--status " +  '"' + status + '"') else ""}
  >>>
  parameter_meta {
    user_id: ""
    status: ""
  }
}