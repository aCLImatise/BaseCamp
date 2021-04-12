version 1.0

task Seqfu {
  command <<<
    seqfu
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.0--h38613fd_1"
  }
  output {
    File out_stdout = stdout()
  }
}