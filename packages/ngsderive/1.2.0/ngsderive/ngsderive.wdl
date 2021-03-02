version 1.0

task Ngsderive {
  command <<<
    ngsderive
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngsderive:1.2.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}