version 1.0

task Sandbag {
  command <<<
    sandbag
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypairs:3.2.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}