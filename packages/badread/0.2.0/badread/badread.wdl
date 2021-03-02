version 1.0

task Badread {
  command <<<
    badread
  >>>
  runtime {
    docker: "quay.io/biocontainers/badread:0.2.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}