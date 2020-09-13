version 1.0

task HcaAuthPutv1usergroup {
  input {
    String? action
    String? groups
    String? user_id
  }
  command <<<
    hca auth put_v1_user_group \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    action: ""
    groups: ""
    user_id: "User ID (email)."
  }
  output {
    File out_stdout = stdout()
  }
}