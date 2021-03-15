version 1.0

task Flight {
  command <<<
    flight
  >>>
  runtime {
    docker: "quay.io/biocontainers/flight-genome:1.1.1--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}