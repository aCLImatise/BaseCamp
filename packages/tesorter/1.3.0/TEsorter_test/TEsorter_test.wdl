version 1.0

task TEsortertest {
  command <<<
    TEsorter_test
  >>>
  runtime {
    docker: "quay.io/biocontainers/tesorter:1.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}