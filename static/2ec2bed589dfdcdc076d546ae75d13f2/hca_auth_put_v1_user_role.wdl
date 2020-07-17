version 1.0

task HcaAuthPutV1UserRole {
  input {
    String? roles
    String? user_id
  }
  command <<<
    hca auth put-v1-user-role \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    roles: ""
    user_id: ""
  }
}