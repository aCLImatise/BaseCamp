version 1.0

task KmaIndex {
  command <<<
    kma_index
  >>>
  output {
    File out_stdout = stdout()
  }
}