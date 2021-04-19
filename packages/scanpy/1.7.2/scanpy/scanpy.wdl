version 1.0

task Scanpy {
  command <<<
    scanpy
  >>>
  runtime {
    docker: "quay.io/biocontainers/scanpy:1.7.2--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}