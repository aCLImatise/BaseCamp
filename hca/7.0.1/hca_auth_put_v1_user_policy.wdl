version 1.0

task HcaAuthPutv1userpolicy {
  input {
    String? policy
    String? user_id
  }
  command <<<
    hca auth put_v1_user_policy \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    policy: ""
    user_id: "User ID (email)."
  }
  output {
    File out_stdout = stdout()
  }
}