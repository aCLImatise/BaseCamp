version 1.0

task HcaAuthPutv1userrole {
  input {
    String? action
    String? roles
    String? user_id
  }
  command <<<
    hca auth put_v1_user_role \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    action: ""
    roles: ""
    user_id: "User ID (email)."
  }
  output {
    File out_stdout = stdout()
  }
}