version 1.0

task Seqfu {
  command <<<
    seqfu
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.8.7--hed695b0_0"
  }
  output {
    File out_stdout = stdout()
  }
}