version 1.0

task KmaUpdate {
  command <<<
    kma_update
  >>>
  output {
    File out_stdout = stdout()
  }
}