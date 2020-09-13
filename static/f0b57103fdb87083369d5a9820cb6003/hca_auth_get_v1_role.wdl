version 1.0

task HcaAuthGetv1role {
  input {
    String? role_id
  }
  command <<<
    hca auth get_v1_role \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""}
  >>>
  parameter_meta {
    role_id: "The name of the role."
  }
  output {
    File out_stdout = stdout()
  }
}