version 1.0

task ArrowStatusUpdateStatus {
  input {
    String id_number
    String new_value
  }
  command <<<
    arrow status update_status \
      ~{id_number} \
      ~{new_value}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    id_number: ""
    new_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}