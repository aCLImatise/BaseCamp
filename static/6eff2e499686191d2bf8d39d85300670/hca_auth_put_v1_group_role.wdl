version 1.0

task HcaAuthPutv1grouprole {
  input {
    String? group_id
    String? roles
  }
  command <<<
    hca auth put_v1_group_role \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_id: "The name of the group."
    roles: ""
  }
  output {
    File out_stdout = stdout()
  }
}