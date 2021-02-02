version 1.0

task ArrowGroupsGetGroupCreator {
  input {
    String group
  }
  command <<<
    arrow groups get_group_creator \
      ~{group}
  >>>
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}