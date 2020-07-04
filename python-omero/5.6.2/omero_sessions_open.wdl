version 1.0

task OmeroSessionsOpen {
  input {
    String? user_id
    String? user_name
    String? group_id
    String? group_name
    Boolean? timeout
  }
  command <<<
    omero sessions open \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(user_name) then ("--user-name " +  '"' + user_name + '"') else ""} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(group_name) then ("--group-name " +  '"' + group_name + '"') else ""} \
      ~{true="--timeout" false="" timeout}
  >>>
  parameter_meta {
    user_id: "ID of the user"
    user_name: "Name of the user"
    group_id: "ID of the group"
    group_name: "Name of the group"
    timeout: "[TIMEOUT]  Timeout in seconds (optional; default: maximum possible)"
  }
}