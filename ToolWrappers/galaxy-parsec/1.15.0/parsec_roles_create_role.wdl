version 1.0

task ParsecRolesCreateRole {
  input {
    String? user_ids
    String? group_ids
    String role_name
    String description
  }
  command <<<
    parsec roles create_role \
      ~{role_name} \
      ~{description} \
      ~{if defined(user_ids) then ("--user_ids " +  '"' + user_ids + '"') else ""} \
      ~{if defined(group_ids) then ("--group_ids " +  '"' + group_ids + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    user_ids: "A list of encoded user IDs to add to the new role"
    group_ids: "A list of encoded group IDs to add to the new role"
    role_name: ""
    description: ""
  }
  output {
    File out_stdout = stdout()
  }
}