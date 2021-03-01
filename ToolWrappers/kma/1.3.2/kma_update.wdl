version 1.0

task KmaUpdate {
  command <<<
    kma_update
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}