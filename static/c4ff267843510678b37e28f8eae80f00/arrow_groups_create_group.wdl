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
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}