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
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    group_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}