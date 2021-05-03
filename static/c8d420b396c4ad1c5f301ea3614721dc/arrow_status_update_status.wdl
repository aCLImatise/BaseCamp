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
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    id_number: ""
    new_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}