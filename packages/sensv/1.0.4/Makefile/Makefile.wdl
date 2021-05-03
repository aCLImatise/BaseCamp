version 1.0

task Makefile {
  command <<<
    Makefile
  >>>
  runtime {
    docker: "quay.io/biocontainers/sensv:1.0.4--h2e03b76_0"
  }
  output {
    File out_stdout = stdout()
  }
}