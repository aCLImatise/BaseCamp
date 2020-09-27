version 1.0

task HcaAuthPostv1group {
  input {
    String? group_id
    String? policy
  }
  command <<<
    hca auth post_v1_group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    group_id: "Used to identify users, groups, and roles.\\n--policy POLICY\\n--roles ROLES\\n"
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}