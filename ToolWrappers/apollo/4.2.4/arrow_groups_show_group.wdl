version 1.0

task ArrowGroupsShowGroup {
  input {
    String group_id
  }
  command <<<
    arrow groups show_group \
      ~{group_id}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}