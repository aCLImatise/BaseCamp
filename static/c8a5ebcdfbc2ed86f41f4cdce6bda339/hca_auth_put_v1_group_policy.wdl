version 1.0

task HcaAuthPutv1grouppolicy {
  input {
    String? group_id
    String? policy
  }
  command <<<
    hca auth put_v1_group_policy \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    group_id: "The name of the group."
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}