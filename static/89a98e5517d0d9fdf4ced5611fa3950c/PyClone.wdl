version 1.0

task PyClone {
  command <<<
    PyClone
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyclone:0.13.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}