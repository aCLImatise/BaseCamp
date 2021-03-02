version 1.0

task ArrowGroupsDeleteGroup {
  input {
    String group
  }
  command <<<
    arrow groups delete_group \
      ~{group}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}