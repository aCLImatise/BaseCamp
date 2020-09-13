version 1.0

task ArrowGroupsCreateGroup {
  input {
    String name
  }
  command <<<
    arrow groups create_group \
      ~{name}
  >>>
  parameter_meta {
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}