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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    group_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}