version 1.0

task HcaAuthPutv1grouprole {
  input {
    String? action
    String? roles
    String? group_id
  }
  command <<<
    hca auth put_v1_group_role \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    action: ""
    roles: ""
    group_id: "The name of the group."
  }
  output {
    File out_stdout = stdout()
  }
}