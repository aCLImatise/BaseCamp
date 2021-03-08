version 1.0

task Scanpy {
  command <<<
    scanpy
  >>>
  runtime {
    docker: "quay.io/biocontainers/scanpy:1.7.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}