version 1.0

task ArrowStatusDeleteStatus {
  input {
    String id_number
  }
  command <<<
    arrow status deleteStatus \
      ~{id_number}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_number: ""
  }
  output {
    File out_stdout = stdout()
  }
}