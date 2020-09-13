version 1.0

task KmaShm {
  command <<<
    kma_shm
  >>>
  output {
    File out_stdout = stdout()
  }
}