version 1.0

task Exomiserrestprioritiser {
  command <<<
    exomiser_rest_prioritiser
  >>>
  runtime {
    docker: "quay.io/biocontainers/exomiser-rest-prioritiser:12.1.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}