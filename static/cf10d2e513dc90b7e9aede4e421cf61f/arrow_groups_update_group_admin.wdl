version 1.0

task ArrowGroupsUpdateGroupAdmin {
  input {
    String? users
    String group_id
  }
  command <<<
    arrow groups update_group_admin \
      ~{group_id} \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""}
  >>>
  parameter_meta {
    users: "List of emails"
    group_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}