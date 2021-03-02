version 1.0

task ArrowStatusShowStatus {
  input {
    String status
  }
  command <<<
    arrow status show_status \
      ~{status}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    status: ""
  }
  output {
    File out_stdout = stdout()
  }
}