version 1.0

task HcaAuthGetv1userowns {
  input {
    String? user_id
    String? resource_type
  }
  command <<<
    hca auth get_v1_user_owns \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(resource_type) then ("--resource-type " +  '"' + resource_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user_id: "User ID (email)."
    resource_type: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}