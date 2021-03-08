version 1.0

task KmaShm {
  command <<<
    kma_shm
  >>>
  runtime {
    docker: "quay.io/biocontainers/kma:1.3.13--hed695b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}