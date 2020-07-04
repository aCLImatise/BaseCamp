version 1.0

task HcaAuthPutV1UserPolicy {
  input {
    String? user_id
    String? policy
  }
  command <<<
    hca auth put-v1-user-policy \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email)."
    policy: ""
  }
}