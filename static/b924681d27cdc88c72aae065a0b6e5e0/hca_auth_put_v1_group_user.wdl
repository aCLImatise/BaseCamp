version 1.0

task HcaAuthPutV1GroupUser {
  input {
    String? users
    String? group_id
  }
  command <<<
    hca auth put-v1-group-user \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    users: ""
    group_id: ""
  }
}