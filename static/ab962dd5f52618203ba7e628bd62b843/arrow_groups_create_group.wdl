version 1.0

task ArrowGroupsCreateGroup {
  input {
    String name
  }
  command <<<
    arrow groups create_group \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}