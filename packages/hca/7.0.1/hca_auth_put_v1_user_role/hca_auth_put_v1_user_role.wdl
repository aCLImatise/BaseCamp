version 1.0

task HcaAuthPutv1userrole {
  input {
    String? user_id
    String? roles
  }
  command <<<
    hca auth put_v1_user_role \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email).\\n--action ACTION\\n"
    roles: ""
  }
  output {
    File out_stdout = stdout()
  }
}