version 1.0

task HcaAuthPostV1User {
  input {
    String? user_id
    String? groups
  }
  command <<<
    hca auth post-v1-user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""}
  >>>
  parameter_meta {
    user_id: ""
    groups: ""
  }
}