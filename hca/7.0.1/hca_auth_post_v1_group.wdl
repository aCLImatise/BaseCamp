version 1.0

task HcaAuthPostv1group {
  input {
    String? group_id
    String? policy
    String? roles
  }
  command <<<
    hca auth post_v1_group \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""}
  >>>
  parameter_meta {
    group_id: "Used to identify users, groups, and roles."
    policy: ""
    roles: ""
  }
  output {
    File out_stdout = stdout()
  }
}