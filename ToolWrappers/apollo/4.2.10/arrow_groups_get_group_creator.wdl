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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}