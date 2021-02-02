version 1.0

task HcaAuthPutv1userpolicy {
  input {
    String? user_id
    String? policy
  }
  command <<<
    hca auth put_v1_user_policy \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email)."
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}