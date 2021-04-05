version 1.0

task Picard {
  command <<<
    picard
  >>>
  runtime {
    docker: "quay.io/biocontainers/picard-slim:2.25.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}