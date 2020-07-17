version 1.0

task HcaAuthPostV1Role {
  input {
    String? role_id
    String? policy
  }
  command <<<
    hca auth post-v1-role \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    role_id: ""
    policy: ""
  }
}