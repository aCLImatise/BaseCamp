version 1.0

task KmaIndex {
  command <<<
    kma_index
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}