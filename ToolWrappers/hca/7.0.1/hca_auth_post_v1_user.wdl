version 1.0

task HcaAuthPostv1user {
  input {
    String? user_id
    String? groups
  }
  command <<<
    hca auth post_v1_user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""}
  >>>
  parameter_meta {
    user_id: "Used to identify users, groups, and roles.\\n--groups GROUPS\\n--roles ROLES\\n--policy POLICY\\n"
    groups: ""
  }
  output {
    File out_stdout = stdout()
  }
}