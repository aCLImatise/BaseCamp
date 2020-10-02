version 1.0

task HcaAuthPutv1groupuser {
  input {
    String? group_id
    String? users
  }
  command <<<
    hca auth put_v1_group_user \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group.\\n--action ACTION\\n"
    users: ""
  }
  output {
    File out_stdout = stdout()
  }
}