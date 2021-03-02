version 1.0

task Shmlast {
  command <<<
    shmlast
  >>>
  runtime {
    docker: "quay.io/biocontainers/shmlast:1.6--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}