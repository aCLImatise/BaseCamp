version 1.0

task ArrowGroupsGetGroupCreator {
  input {
    String group
  }
  command <<<
    arrow groups get_group_creator \
      ~{group}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}