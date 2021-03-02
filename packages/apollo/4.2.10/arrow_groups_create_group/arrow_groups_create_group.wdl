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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}