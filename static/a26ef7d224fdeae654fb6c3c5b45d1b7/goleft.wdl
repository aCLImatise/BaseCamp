version 1.0

task Goleft {
  command <<<
    goleft
  >>>
  runtime {
    docker: "quay.io/biocontainers/goleft:0.2.4--0"
  }
  output {
    File out_stdout = stdout()
  }
}