version 1.0

task HcaAuthPostv1role {
  input {
    String? role_id
    String? policy
  }
  command <<<
    hca auth post_v1_role \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    role_id: "Used to identify users, groups, and roles.\\n--policy POLICY\\n"
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}