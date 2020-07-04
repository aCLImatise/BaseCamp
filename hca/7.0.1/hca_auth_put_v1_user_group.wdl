version 1.0

task HcaAuthPutV1UserGroup {
  input {
    String? groups
    String? user_id
  }
  command <<<
    hca auth put-v1-user-group \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    groups: ""
    user_id: ""
  }
}