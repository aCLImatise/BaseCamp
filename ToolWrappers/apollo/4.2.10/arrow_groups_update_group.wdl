version 1.0

task ArrowGroupsUpdateGroup {
  input {
    String group_id
    String new_name
  }
  command <<<
    arrow groups update_group \
      ~{group_id} \
      ~{new_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    group_id: ""
    new_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}