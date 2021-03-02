version 1.0

task Nanocompore {
  command <<<
    nanocompore
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanocompore:1.0.3--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}