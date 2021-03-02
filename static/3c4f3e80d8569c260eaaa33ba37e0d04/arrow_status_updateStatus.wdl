version 1.0

task ArrowStatusUpdateStatus {
  input {
    String id_number
    String new_value
  }
  command <<<
    arrow status updateStatus \
      ~{id_number} \
      ~{new_value}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_number: ""
    new_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}