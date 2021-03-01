version 1.0

task Gtdbtk {
  input {
    String error
  }
  command <<<
    gtdbtk \
      ~{error}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    error: "________________________________________________________________________________"
  }
  output {
    File out_stdout = stdout()
  }
}