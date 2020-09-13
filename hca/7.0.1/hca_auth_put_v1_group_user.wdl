version 1.0

task HcaAuthPutv1groupuser {
  input {
    String? action
    String? users
    String? group_id
  }
  command <<<
    hca auth put_v1_group_user \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    action: ""
    users: ""
    group_id: "The name of the group."
  }
  output {
    File out_stdout = stdout()
  }
}