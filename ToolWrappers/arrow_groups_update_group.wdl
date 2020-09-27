version 1.0

task ArrowGroupsUpdateGroup {
  input {
    String group_id
    String new_name
  }
  command <<<
    arrow groups update_group \
      ~{group_id} \
      ~{new_name}
  >>>
  parameter_meta {
    group_id: ""
    new_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}