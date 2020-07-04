version 1.0

task HcaAuthPutV1RolePolicy {
  input {
    String? role_id
    String? policy
  }
  command <<<
    hca auth put-v1-role-policy \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    role_id: "The name of the role."
    policy: ""
  }
}