version 1.0

task KmaShm {
  command <<<
    kma_shm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}