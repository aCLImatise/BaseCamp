version 1.0

task HcaAuthPutV1GroupPolicy {
  input {
    String? group_id
    String? policy
  }
  command <<<
    hca auth put-v1-group-policy \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group."
    policy: ""
  }
}