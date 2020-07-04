version 1.0

task HcaAuthGetV1Role {
  input {
    String? role_id
  }
  command <<<
    hca auth get-v1-role \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""}
  >>>
  parameter_meta {
    role_id: "The name of the role."
  }
}