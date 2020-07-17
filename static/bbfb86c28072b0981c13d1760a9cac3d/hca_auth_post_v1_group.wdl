version 1.0

task HcaAuthPostV1Group {
  input {
    String? group_id
    String? policy
  }
  command <<<
    hca auth post-v1-group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    group_id: ""
    policy: ""
  }
}