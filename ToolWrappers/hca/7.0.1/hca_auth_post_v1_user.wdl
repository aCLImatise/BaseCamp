version 1.0

task HcaAuthPostv1user {
  input {
    String? user_id
    String? groups
    String? roles
    String? policy
  }
  command <<<
    hca auth post_v1_user \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""} \
      ~{if defined(policy) then ("--policy " +  '"' + policy + '"') else ""}
  >>>
  parameter_meta {
    user_id: "Used to identify users, groups, and roles."
    groups: ""
    roles: ""
    policy: ""
  }
  output {
    File out_stdout = stdout()
  }
}