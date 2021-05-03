version 1.0

task ArrowGroupsUpdateMembership {
  input {
    Int? group_id
    String? users
    Int? memberships
  }
  command <<<
    arrow groups update_membership \
      ~{if defined(group_id) then ("--group_id " +  '"' + group_id + '"') else ""} \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""} \
      ~{if defined(memberships) then ("--memberships " +  '"' + memberships + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    group_id: "Group ID Number"
    users: "List of emails"
    memberships: "Bulk memberships to update of the form: [ {groupId:\\n<groupId>,users: [\\\"user1\\\", \\\"user2\\\", \\\"user3\\\"]},\\n{groupId:<another-groupId>, users: [\\\"user2\\\", \\\"user8\\\"]}\\n(users and groupId will be ignored)"
  }
  output {
    File out_stdout = stdout()
  }
}