version 1.0

task ArrowStatusDeleteStatus {
  input {
    String id_number
  }
  command <<<
    arrow status delete_status \
      ~{id_number}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}