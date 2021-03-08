version 1.0

task Vembrane {
  command <<<
    vembrane
  >>>
  runtime {
    docker: "quay.io/biocontainers/vembrane:0.6.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}