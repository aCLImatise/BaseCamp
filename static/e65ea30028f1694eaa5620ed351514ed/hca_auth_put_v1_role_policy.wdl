version 1.0

task HcaAuthPutv1rolepolicy {
  input {
    String? role_id
    String? policy
  }
  command <<<
    hca auth put_v1_role_policy \
      ~{if defined(role_id) then ("--role-id " +  '"' + role_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    role_id: "The name of the role."
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}