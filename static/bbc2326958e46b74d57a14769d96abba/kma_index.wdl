version 1.0

task KmaIndex {
  command <<<
    kma_index
  >>>
  runtime {
    docker: "quay.io/biocontainers/kma:1.3.14--h5bf99c6_0"
  }
  output {
    File out_stdout = stdout()
  }
}