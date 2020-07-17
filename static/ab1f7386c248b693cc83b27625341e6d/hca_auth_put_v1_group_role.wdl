version 1.0

task HcaAuthPutV1GroupRole {
  input {
    String? roles
    String? group_id
  }
  command <<<
    hca auth put-v1-group-role \
      ~{if defined(roles) then ("--roles " +  '"' + roles + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    roles: ""
    group_id: ""
  }
}