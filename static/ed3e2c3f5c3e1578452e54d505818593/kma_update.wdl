version 1.0

task KmaUpdate {
  command <<<
    kma_update
  >>>
  runtime {
    docker: "quay.io/biocontainers/kma:1.3.12--hed695b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}