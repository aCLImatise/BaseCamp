version 1.0

task HcaAuthPutv1rolepolicy {
  input {
    String? policy
    String? role_id
  }
  command <<<
    hca auth put_v1_role_policy \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""} \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""}
  >>>
  parameter_meta {
    policy: ""
    role_id: "The name of the role."
  }
  output {
    File out_stdout = stdout()
  }
}