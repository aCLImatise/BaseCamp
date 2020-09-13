version 1.0

task HcaAuthPutv1grouppolicy {
  input {
    String? policy
    String? group_id
  }
  command <<<
    hca auth put_v1_group_policy \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    policy: ""
    group_id: "The name of the group."
  }
  output {
    File out_stdout = stdout()
  }
}